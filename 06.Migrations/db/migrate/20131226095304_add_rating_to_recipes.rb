class AddRatingToRecipes < ActiveRecord::Migration

  # def change
  #   add_column :recipes, :rating, :integer
  # end

  def up
    add_column :recipes, :rating, :integer
  end

  def down
    remove_column :recipes, :rating
  end

end