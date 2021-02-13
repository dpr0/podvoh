# frozen_string_literal: true

class CreateSetups < ActiveRecord::Migration[6.1]
  def change
    create_table :setups do |t|
      t.string :code
      t.string :name
      t.integer :item_id
      t.integer :manufacturer_id
      t.integer :price
      t.timestamps
    end
  end
end
