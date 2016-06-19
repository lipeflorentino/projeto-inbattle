require 'test_helper'

class PaginasControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get alistamento" do
    get :alistamento
    assert_response :success
  end

  test "should get heroisdeguerra" do
    get :heroisdeguerra
    assert_response :success
  end

  test "should get sos" do
    get :sos
    assert_response :success
  end

    test "should get admin" do
    get :admin
    assert_response :success
  end
  
end
