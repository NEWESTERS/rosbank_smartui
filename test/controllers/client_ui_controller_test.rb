require 'test_helper'

class ClientUiControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get client_ui_view_url
    assert_response :success
  end

end
