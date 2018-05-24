class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :image
      t.integer :cat_id

      t.timestamps
    end
  end
end
