class Recipe < ActiveRecord::Base
  # your code here
  def to_s
    "the new recipe added is #{name}: #{description}, cooking time: #{length}, difficulty: #{difficulty}, rating:#{rating}"
  end
end