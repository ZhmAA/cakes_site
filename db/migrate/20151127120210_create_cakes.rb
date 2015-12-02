class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
        t.string :cake_name
        t.text :cake_description
        t.string :cakeimage_uid
      t.timestamps
    end
  end
end
