require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = User.new username: "Samuel", email: "redeyetuning@gmail.com", password: "foobar", password_confirmation: "foobar"
  end 

  test 'User is valid' do
  	assert @user.valid?
  end

  test "User :username exists" do
  	@user.username = ""
  	assert_not @user.valid?
  end

  test "User :email exists" do
  	@user.email = ""
  	assert_not @user.valid?
  end

  test "User :password exists" do
  	@user.password = @user.password_confirmation =  nil
  	assert_not @user.valid?
  end

end
