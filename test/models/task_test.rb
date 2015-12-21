require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  def setup
    @task = Task.new(title: "Pickup string", details: "I like string. So I need to buy some from the dollar store.")
  end
  
  test "Title field cannot be blank" do
    @task.title = " "
    assert_not @task.valid?
  end
  
end