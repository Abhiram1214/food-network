class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :recipe_id
      t.integer :likes

      t.timestamps null: false
    end
  end
end
