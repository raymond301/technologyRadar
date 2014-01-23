require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new_file" do
    get :new_file
    assert_response :success
  end

  test "should get show_file" do
    get :show_file
    assert_response :success
  end

end
