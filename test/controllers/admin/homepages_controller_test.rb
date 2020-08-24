require 'test_helper'

class Admin::HomepagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_homepages_index_url
    assert_response :success
  end

end
