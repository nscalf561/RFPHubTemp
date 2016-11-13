require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Test User", email: "testuser@test.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name sholud be present" do
    @user.name = "     "
    assert_not @user.valid?
  end


end