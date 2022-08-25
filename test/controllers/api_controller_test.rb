require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get get_layer" do
    get api_get_layer_url
    assert_response :success
  end

end
