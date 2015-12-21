require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "N. E. Buddy", email: "yaboi@fire.com")
  end
  
  test "Email must be valid" do
    @user.email = "anywherecom"
    assert_not @user.valid?
  end
  
  test "Name field cannot be blank" do
    @user.name = " "
    assert_not @user.valid?
  end
  
end