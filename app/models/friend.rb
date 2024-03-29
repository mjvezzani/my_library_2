class Friend < ActiveRecord::Base

  belongs_to :user
  has_many :books

  def full_name
    self.first_name + " " + self.last_name
  end
end
