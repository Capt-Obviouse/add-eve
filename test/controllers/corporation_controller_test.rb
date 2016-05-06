require 'test_helper'

class CorporationControllerTest < ActionController::TestCase
  test "should get overview" do
    get :overview
    assert_response :success
  end

  test "should get programs" do
    get :programs
    assert_response :success
  end

  test "should get fleet-doctrine" do
    get :fleet-doctrine
    assert_response :success
  end

end
