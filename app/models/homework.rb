class Homework < ApplicationRecord
  belongs_to :user
  
  has_many :answers
  before_save :check_due_date
  
  def check_due_date
    if @homework.due_date < Date.today
      errors.add(:due_date, 'Cannot submit homework after due date')
    end    
  end
end
