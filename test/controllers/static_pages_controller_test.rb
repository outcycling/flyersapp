require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_pages_index_url
    assert_response :success
  end

  test "should get supporters" do
    get static_pages_supporters_url
    assert_response :success
  end

  test "should get youth" do
    get static_pages_youth_url
    assert_response :success
  end

  test "should get board" do
    get static_pages_board_url
    assert_response :success
  end

  test "should get staff" do
    get static_pages_staff_url
    assert_response :success
  end

  test "should get photos" do
    get static_pages_photos_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get apply" do
    get static_pages_apply_url
    assert_response :success
  end

end
