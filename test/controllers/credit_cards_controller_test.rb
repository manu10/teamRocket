require 'test_helper'

class CreditCardsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get set_credit_card" do
    get :set_credit_card
    assert_response :success
  end

end
