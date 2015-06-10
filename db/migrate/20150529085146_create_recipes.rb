class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :chef
      t.string :recipe
      t.string :time
      t.string :ingredients
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
