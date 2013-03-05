class CreateAuthorsTable < ActiveRecord::Migration
    def change
      create_table :authors do |t|
        t.string :name
        t.text :image
        t.string :genre
        t.timestamps
    end
  end
end
