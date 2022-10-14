require "test_helper"

class RePostsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get re_posts_create_url
    assert_response :redirect
  end
end
