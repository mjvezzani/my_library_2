class Book < ActiveRecord::Base

  belongs_to :owner, foreign_key: 'user_id', class_name: 'User'
  belongs_to :friend

end
