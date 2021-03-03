require "test_helper"

class DummyUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dummy_user = dummy_users(:one)
  end

  test "should get index" do
    get dummy_users_url
    assert_response :success
  end

  test "should get new" do
    get new_dummy_user_url
    assert_response :success
  end

  test "should create dummy_user" do
    assert_difference('DummyUser.count') do
      post dummy_users_url, params: { dummy_user: { email: @dummy_user.email, password: @dummy_user.password } }
    end

    assert_redirected_to dummy_user_url(DummyUser.last)
  end

  test "should show dummy_user" do
    get dummy_user_url(@dummy_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_dummy_user_url(@dummy_user)
    assert_response :success
  end

  test "should update dummy_user" do
    patch dummy_user_url(@dummy_user), params: { dummy_user: { email: @dummy_user.email, password: @dummy_user.password } }
    assert_redirected_to dummy_user_url(@dummy_user)
  end

  test "should destroy dummy_user" do
    assert_difference('DummyUser.count', -1) do
      delete dummy_user_url(@dummy_user)
    end

    assert_redirected_to dummy_users_url
  end
end
