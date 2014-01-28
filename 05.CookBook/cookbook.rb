require_relative 'config/application'
require './models/recipe'

# your program here

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes"

choice = gets.chomp.to_i

if choice == 1
  puts "What's the name of the recipe?"
   name = gets.chomp
 puts "Description ?"
   description = gets.chomp
 puts "Cooking time (in minutes)?"
   length = gets.chomp.to_i
 puts "What is the difficulty (on a scale of 3)?"
   difficulty = gets.chomp.to_i
 recipe = Recipe.create(name: name, description: description, length: length, difficulty: difficulty)
 puts "Added!"
elsif choice == 2
 Recipe.delete_all
        puts "All recipes deleted!"
elsif choice == 3
 puts Recipe.all
else
  puts "i did not understand"
  
end