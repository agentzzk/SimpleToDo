class User < ActiveRecord::Base
  
  has_many :tasks
  
  validates :email, email_format: { message: "format must be valid" }, presence: true, uniqueness: { case_sensitive: false}
  validates :name, presence: true
  
  before_save {self.email = email.downcase}
  
  has_secure_password
end