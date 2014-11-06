class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.references :song

      t.timestamps
    end
    add_index :reviews, :song_id
  end
end
