require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get ayuda" do
    get :ayuda
    assert_response :success
  end

end
