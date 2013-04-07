class CreatePlansTable < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.text :address
      t.float :latitude, :default => 0
      t.float :longitude, :default => 0
      t.timestamps
    end
  end
end
