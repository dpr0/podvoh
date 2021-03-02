# frozen_string_literal: true

class CreateJoinTableModificationUser < ActiveRecord::Migration[6.1]
  def change
    create_join_table :modifications, :users do |t|
      t.index [:modification_id, :user_id]
      t.index [:user_id, :modification_id]
      t.timestamp :created_at
      t.boolean :lost
    end
  end
end
