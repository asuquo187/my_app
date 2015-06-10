class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :music_genre
      t.string :city
      t.datetime :date
      t.string :venue
      t.string :comments

      t.timestamps

    end
  end
end
