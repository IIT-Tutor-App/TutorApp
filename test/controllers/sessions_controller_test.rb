require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get sessions_redirect_url
    assert_response :success
  end

end
