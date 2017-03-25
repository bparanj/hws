class User < ApplicationRecord
  has_many :homeworks
  
  def student?
    !teacher
  end
end
