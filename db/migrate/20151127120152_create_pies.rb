class CreatePies < ActiveRecord::Migration
  def change
    create_table :pies do |t|
        t.string :pie_name
        t.text :pie_description
        t.string :pieimage_uid
      t.timestamps
    end
  end
end
