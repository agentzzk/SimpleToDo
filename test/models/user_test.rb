require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "N. E. Buddy", email: "yaboi@fire.com")
  end
  
  test "Email must be valid" do
    @user.email = "anywherecom"
    assert_not @user.valid?
  end
  
  test "Email must be present" do
    @user.email = " "
    assert_not @user.valid?
  end
  
  test "Name field cannot be blank" do
    @user.name = " "
    assert_not @user.valid?
  end
  
  test "Email must be unique" do
    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    @user.save
    assert_not dup_user.valid?
  end
  
end