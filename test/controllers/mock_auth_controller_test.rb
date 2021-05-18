require 'test_helper'

class MockAuthControllerTest < ActionDispatch::IntegrationTest
  test "should get token with password" do
    # The statically set username/password combo should succeed.
    post mock_auth_token_url, as: :json, params: {'username': 'lewis', 'password': 'secret'}
    assert_response :success

    # Any other combination should fail.
    post mock_auth_token_url, as: :json, params: {'username': 'not lewis', 'password': 'everyone knows'}
    assert_response :bad_request
  end

end
