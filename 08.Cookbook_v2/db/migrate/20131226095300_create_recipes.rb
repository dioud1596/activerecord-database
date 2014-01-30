class CreateRecipes < ActiveRecord::Migration
  def change
    # your code here to create the recipes table
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :length
      t.integer :difficulty default: 2
      t.integer :rating
    end
  end
end