require 'test_helper'

class UimoduleControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get uimodule_list_url
    assert_response :success
  end

  test "should get show" do
    get uimodule_show_url
    assert_response :success
  end

end
