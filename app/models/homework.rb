class Homework < ApplicationRecord
  has_many :assignments
  has_many :users, through: :assignments
  
  before_save :check_due_date
  
  def check_due_date
    if due_date < Date.today
      errors.add(:due_date, 'Cannot submit homework after due date')
    end    
  end
  
end
