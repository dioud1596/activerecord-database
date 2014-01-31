class Recipe < ActiveRecord::Base
  # your code here
  validates :name, presence: true, uniqueness: true
  
  def to_s
    "#{name}"
  end

  # class implementation + validations
end