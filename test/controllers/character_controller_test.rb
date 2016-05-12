require 'test_helper'

class CharacterControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
