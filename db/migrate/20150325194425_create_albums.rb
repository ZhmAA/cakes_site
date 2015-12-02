class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
        t.string :name
        t.text :description
        t.string :image_uid
        t.string :meta_title
        t.string :meta_description
        t.string :keywords
        t.timestamps
    end
  end
end
