require_relative 'config/application'
require './models/recipe'
require './models/user'


# your code here to query the database
puts User.name
puts User.all

puts Recipe.all
