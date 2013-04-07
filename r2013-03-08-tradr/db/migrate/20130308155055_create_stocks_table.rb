class CreateStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.float :shareprice
      t.integer :user_id
      t.integer :shares
      t.timestamps
    end
  end
end
