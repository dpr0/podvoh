# frozen_string_literal: true

lock '3.17.0'

server 'krsz.ru', port: 2222, roles: %w(app db web), primary: true

set :rbenv_ruby,      '3.0.3'
set :application,     'podvoh'
set :repo_url,        'git@github.com:dpr0/podvoh.git'
set :deploy_user,     'deploy'
set :linked_files,    fetch(:linked_files, []).push('config/cable.yml', 'config/database.yml', 'config/secrets.yml', 'config/master.key', 'config/credentials.yml.enc', '.env')
set :linked_dirs,     fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'tmp/session_store', 'vendor/bundle', 'public/system', 'public/uploads')
set :keep_releases,   5
set :user,            'deploy'
set :use_sudo,        false
set :stage,           :production
set :deploy_to,       "/home/#{fetch(:user)}/#{fetch(:application)}"
set :ssh_options,     forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub)
set :ruby_string,     "$HOME/.rbenv/bin/rbenv exec"
set :ssh_options, {
  user: 'deploy',
  keys: '~/.ssh/id_rsa',
  forward_agent: true,
  auth_methods: %w(publickey password),
  port: 2222
}

namespace :deploy do
  desc 'Make sure local git is in sync with remote.'
  task :check_revision do
    on roles(:app) do
      unless `git rev-parse HEAD` == `git rev-parse origin/master`
        puts 'WARNING: HEAD is not the same as origin/main'
        puts 'Run `git push` to sync changes.'
        exit
      end
    end
  end

  desc 'Runs rake db:seed'
  task seed: [:set_rails_env] do
    on primary fetch(:migration_role) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'db:seed'
        end
      end
    end
  end

  desc 'Runs rake assets:precompile'
  task :precompile do
    on roles(:app) do
      execute("cd #{fetch(:application)}/current && RAILS_ENV=production #{fetch(:ruby_string)} rake assets:precompile") if fetch(:stage) == :production
    end
  end

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      invoke 'deploy'
    end
  end

  before :starting, :check_revision
end
