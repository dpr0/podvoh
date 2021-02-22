# frozen_string_literal: true

class CreateModifications < ActiveRecord::Migration[6.1]
  def change
    create_table :modifications do |t|
      t.string :code
      t.string :prop1
      t.string :prop2
      t.string :prop3
      t.integer :price
      t.integer :item_id
      t.integer :image_id
      t.string :images
      t.string :part_codes
      t.timestamps
    end
  end
end
