# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :category_id
      t.integer :manufacturer_id
      t.integer :user_id
      t.integer :setup_id
      t.string :image_group
      t.string :image_array
      t.timestamps
    end
  end
end
