require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get roles_list_url
    assert_response :success
  end

end
