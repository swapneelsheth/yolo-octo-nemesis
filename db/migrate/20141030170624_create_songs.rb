class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.time :length
      t.references :album

      t.timestamps
    end
    add_index :songs, :album_id
  end
end
