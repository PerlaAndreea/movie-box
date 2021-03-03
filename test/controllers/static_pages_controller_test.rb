require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get trending" do
    get static_pages_trending_url
    assert_response :success
  end

  test "should get topRated" do
    get static_pages_topRated_url
    assert_response :success
  end

  test "should get newArrivals" do
    get static_pages_newArrivals_url
    assert_response :success
  end
end
