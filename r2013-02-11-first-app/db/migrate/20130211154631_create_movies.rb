class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.boolean :in_theatres
      t.date :released
      t.text :other

      t.timestamps
    end
  end
end
