require './models/recipe'
require './models/user'
require 'faker'

(1..10).each do |user|
  User.create(name: Faker::Name.name, email: Faker::Internet.email) 
end


recipes = %w(clafoutis flan francois chichi aux noisettes bayrou au rhum)
recipes.each {|recipe|
  Recipe.create(name:recipe)
}

User.create(name: "", email: Faker::Internet.email )
User.create(name: "Bob", email: "zzszszszs.fr" )
User.create(name: "Celine", email: "deded@ded.fr")

Recipe.create(name: "fytft")
Recipe.create(name: "Charlotte aux chocolats")
Recipe.create(name: "")

