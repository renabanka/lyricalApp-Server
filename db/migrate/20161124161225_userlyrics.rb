class Userlyrics < ActiveRecord::Migration[5.0]
  def change
      create_table :userlyrics do |table|
      table.string :artist
      table.string :song
      table.integer :song_id, foreign_key: :lyrics
      table.integer :user_id, foreign_key: :account
  end
  end
end
