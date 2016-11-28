class Lyrics < ActiveRecord::Migration[5.0]
  def change
      create_table :lyrics do |table|
      table.string :artist
      table.string :song
      table.string :album
      table.text :lyrics
      table.string :year
      table.string :genre
      table.string :image
      table.integer :user_id, foreign_key: :account
  end
  end
end

