class User < ApplicationRecord
  has_many :assignments
  has_many :homeworks, :through => :assignments
  
  def student?
    !teacher
  end
  
    
end