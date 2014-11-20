require 'test_helper'

class OfertTest < ActiveSupport::TestCase
  def setup
    @user = users(:cosmeFulanito)
    @ofert = @user.oferts.build(motivacion: "Porque se me canta")
  end

  test "debe ser valido" do
    assert @ofert.valid?
  end

  test "user id debe estar presente" do
    @ofert.user_id = nil
    assert_not @ofertt.valid?
  end

  test "producto id debe estar presente" do
    @ofert.producto_id = nil
    assert_not @ofert.valid?
  end

  test "la motivacion debe estar presente " do
    @ofert.motivacion = "   "
    assert_not @ofert.valid?
  end

  test "el dinero ofrecido debe ser de al menos 1 peso" do
    @ofertt.dinero = 0
    assert_not @ofert.valid?
  end
end
