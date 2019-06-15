class User < ActiveRecord::Base
  has_many :tweets 
  validates :username, presence: true
  validates :email, presence: true
  
  has_secure_password
  
  def slug 
    self.username
  end 

end