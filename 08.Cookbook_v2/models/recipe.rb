class Recipe < ActiveRecord::Base
  belongs_to :cooker, class_name: 'User', foreign_key: 'user_id'
end
