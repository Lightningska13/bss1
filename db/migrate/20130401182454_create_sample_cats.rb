class CreateSampleCats < ActiveRecord::Migration
  def change
    create_table :sample_cats do |t|
      t.string :cat_name
      t.boolean :featured
      t.text :description

      t.timestamps
    end
  end
end
