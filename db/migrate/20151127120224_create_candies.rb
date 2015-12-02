class CreateCandies < ActiveRecord::Migration
  def change
    create_table :candies do |t|
        t.string :candy_name
        t.text :candy_description
        t.string :candyimage_uid
      t.timestamps
    end
  end
end
