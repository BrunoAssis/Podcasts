require "test_helper"

describe User do
  before do
    @user = Factory.build :user
  end

  it "must not be valid without e-mail" do
    @user.email = ""
    @user.valid?.must_equal false
  end
  
  it "must be valid with e-mail" do
    @user.valid?.must_equal true
  end
  
  it "must not be an admin when created" do
    @user.admin.must_equal false
  end
  
  it "must not have a password smaller than 8 characters" do
    @user.password = "123456"
    @user.valid?.must_equal false
  end
end
