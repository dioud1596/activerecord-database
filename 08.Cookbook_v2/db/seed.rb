# coding: utf-8
require './models/recipe'
require './models/user'
require 'faker'
# require 'nokogiri'
# require 'open-uri'


# Seed you database with recipe data from marmiton
puts "Seeding database..."
# Here is a sample of ingredients (you are free to add some !)
ingredients = ["curry", "crevettes", "agneau", "pomme", "orange", "cafe", "asperges", "celeri", "dorade"]



# creates users with the Faker Gem
(1..20).each do |user|
  User.create(name: Faker::Name.name, email: Faker::Internet.email) 
end



# for each user, pick randomly one ingredient or more from the list of ingredients and attach recipes to the user

User.all.each do |user|
  random_ingredient = ingredients.sample(2)
  random_ingredient.each do |ingredient|

    doc = Nokogiri::HTML(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}"))

    doc.search('.m_search_result').each do |element|
        name = element.search('.m_search_titre_recette > a').inner_text
        description = element.search('.m_search_result_part4').inner_text.strip
        length = description.match(/(\d+)/)[0].to_i
        rating = element.search('.etoile1').size
        recipe = Recipe.create(name: name, description: description, length: length, rating: rating)
        recipe.cooker = user
        recipe.save
    end
  end
end