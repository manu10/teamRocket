require 'test_helper'

class StatisticControllerTest < ActionController::TestCase
  test "should get generate_statistics" do
    get :generate_statistics
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
