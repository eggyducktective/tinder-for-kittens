class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.text :name
      t.text :image
      t.text :bio
      t.integer :user_id

      t.timestamps
    end
  end
end
