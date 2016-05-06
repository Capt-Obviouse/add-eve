require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  test "should get console" do
    get :console
    assert_response :success
  end

end
