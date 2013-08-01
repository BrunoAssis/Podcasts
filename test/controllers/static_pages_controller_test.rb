require "test_helper"

describe StaticPagesController do
  
  it "should get index" do
    get :index
    assert_response :success
  end

end
