class User < ActiveRecord::Base
  # your code here
  # class implementation + validations
  validates :name, presence: true 
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "You have fat fingers"

  def to_s
  "#{name} : #{email}"    
  end
end