class CreateRecipes < ActiveRecord::Migration
  def up
    # your code here to create the Recipes table
    create_table :create_recipes do |t|
      t.string :name
      t.string :description
      t.integer :length
      t.integer :difficulty
    end
  end
  def down
    drop_table :create_recipes
  end
end