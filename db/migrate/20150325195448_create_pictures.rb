class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :pic_name
		t.text :pic_description
		t.string :picimage_uid
		t.references :album
      t.timestamps
    end
  end
end
