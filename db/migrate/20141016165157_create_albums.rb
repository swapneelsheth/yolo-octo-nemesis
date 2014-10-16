class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.float :price
      t.date :release

      t.timestamps
    end
  end
end
