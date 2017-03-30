class Assignment < ApplicationRecord
  belongs_to :homework
  belongs_to :user
  
  has_many :submissions
  
end
