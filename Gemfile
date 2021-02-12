# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'devise', github: 'heartcombo/devise', branch: 'ca-omniauth-2'
gem 'dotenv-rails'
gem 'jbuilder'
gem 'pg'
gem 'puma'
gem 'rails'
gem 'react_on_rails'
gem 'sass-rails'
gem 'slim-rails'
gem 'turbolinks'
gem 'webpacker'
# gem 'image_processing', '~> 1.2' # Use Active Storage variant
gem 'omniauth'
gem 'omniauth-yandex'
gem 'omniauth-telegram'
gem 'telegram-bot', github: 'telegram-bot-rb/telegram-bot', branch: 'ruby-3.0'
gem 'telegram-bot-types'

group :development do
  gem 'bcrypt_pbkdf'
  gem 'byebug'
  gem 'capistrano', require: false
  gem 'capistrano3-puma', '4.0.0', require: false
  gem 'capistrano-bundler',    require: false
  gem 'capistrano-nvm',        require: false
  gem 'capistrano-rails',      require: false
  gem 'capistrano-rbenv',      require: false
  gem 'capistrano-yarn',       require: false
  gem 'ed25519'
  gem 'listen'
  gem 'rubocop'
  gem 'spring'
  gem 'web-console'
end
