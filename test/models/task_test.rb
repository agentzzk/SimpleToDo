require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  def setup
    @user = User.create(name: "Anyone", email: "anyone@example.com")
    @task = @user.tasks.create(title: "Pickup string", details: "I like string. So I need to buy some from the dollar store.")
  end
  
  test "Title field cannot be blank" do
    @task.title = " "
    assert_not @task.valid?
  end
  
  test "Ensure a user is associated with any task created" do
    @task.user_id = nil
    assert_not @task.valid?
  end
  
end