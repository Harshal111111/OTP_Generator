require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get generate_otp" do
    get users_generate_otp_url
    assert_response :success
  end

  test "should get verify_otp" do
    get users_verify_otp_url
    assert_response :success
  end
end
