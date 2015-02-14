class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :artist_id
      t.string :title
      t.string :media
      t.float :price

      t.timestamps null: false
    end
  end
end
