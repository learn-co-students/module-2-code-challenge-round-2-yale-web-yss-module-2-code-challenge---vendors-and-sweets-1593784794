require 'test_helper'

class VendorSweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vendor_sweets_new_url
    assert_response :success
  end

end
