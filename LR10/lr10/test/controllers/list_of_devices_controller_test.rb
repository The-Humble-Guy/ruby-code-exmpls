require "test_helper"

class ListOfDevicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_of_devices_index_url
    assert_response :success
  end
end
