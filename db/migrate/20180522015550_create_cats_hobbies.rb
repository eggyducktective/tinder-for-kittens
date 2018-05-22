class CreateCatsHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :cats_hobbies, id: false do |t|
      t.integer :cat_id
      t.integer :hobby_id
    end
  end
end
