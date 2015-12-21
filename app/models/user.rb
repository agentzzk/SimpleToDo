class User < ActiveRecord::Base
  
  validates :email, email_format: { message: "Incorrect email format!" }, presence: true
  validates :name, presence: true
  
end