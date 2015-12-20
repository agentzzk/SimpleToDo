class Task < ActiveRecord::Base
  
 validates :title, presence: true
  
end