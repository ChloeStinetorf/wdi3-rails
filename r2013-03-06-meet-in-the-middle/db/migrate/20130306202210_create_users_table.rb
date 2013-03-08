class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.text :image
      t.text :bio
      t.text :address
      t.float :latitude, :default => 0
      t.float :longitude, :default => 0
      t.timestamps
    end
  end
end
