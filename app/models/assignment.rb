class Assignment < ApplicationRecord
  belongs_to :homework
  belongs_to :user
  
  has_many :submissions
  
  
  def self.get(homework_id, user_id)
    where('homework_id = ?', homework_id).where("user_id = #{user_id}").first
  end
  
end
