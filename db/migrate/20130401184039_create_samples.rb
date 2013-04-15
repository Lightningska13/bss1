class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :title
      t.text :description
      t.string :pic_file_name
      t.integer :pic_file_size
      t.string :pic_content_type
      t.string :url
      t.integer :sample_cat_id

      t.timestamps
    end
  end
end
