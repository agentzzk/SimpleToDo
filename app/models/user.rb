class User < ActiveRecord::Base
  
  has_many :tasks
  
  validates :email, email_format: { message: "Incorrect email format!" }, presence: true, uniqueness: { case_sensitive: false}
  validates :name, presence: true
  
  before_save {self.email = email.downcase}
  
end