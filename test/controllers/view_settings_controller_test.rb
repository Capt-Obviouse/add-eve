require 'test_helper'

class ViewSettingsControllerTest < ActionController::TestCase
  setup do
    @view_setting = view_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:view_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create view_setting" do
    assert_difference('ViewSetting.count') do
      post :create, view_setting: { communications: @view_setting.communications, corporation_information: @view_setting.corporation_information, eve_account_information: @view_setting.eve_account_information, finances: @view_setting.finances, general_information: @view_setting.general_information, new_members: @view_setting.new_members, operations: @view_setting.operations, programs: @view_setting.programs, user_id: @view_setting.user_id }
    end

    assert_redirected_to view_setting_path(assigns(:view_setting))
  end

  test "should show view_setting" do
    get :show, id: @view_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @view_setting
    assert_response :success
  end

  test "should update view_setting" do
    patch :update, id: @view_setting, view_setting: { communications: @view_setting.communications, corporation_information: @view_setting.corporation_information, eve_account_information: @view_setting.eve_account_information, finances: @view_setting.finances, general_information: @view_setting.general_information, new_members: @view_setting.new_members, operations: @view_setting.operations, programs: @view_setting.programs, user_id: @view_setting.user_id }
    assert_redirected_to view_setting_path(assigns(:view_setting))
  end

  test "should destroy view_setting" do
    assert_difference('ViewSetting.count', -1) do
      delete :destroy, id: @view_setting
    end

    assert_redirected_to view_settings_path
  end
end
