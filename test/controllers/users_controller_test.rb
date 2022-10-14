require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_users_url
    assert_response :success
  end

  test "should get create" do
    post users_url(user: { email: 'test@example.com'})
    assert_response :redirect
  end
end
