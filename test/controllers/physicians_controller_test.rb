require 'test_helper'

class PhysiciansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get physicians_new_url
    assert_response :success
  end

  test "should get create" do
    get physicians_create_url
    assert_response :success
  end

  test "should get show" do
    get physicians_show_url
    assert_response :success
  end

  test "should get index" do
    get physicians_index_url
    assert_response :success
  end

  test "should get edit" do
    get physicians_edit_url
    assert_response :success
  end

  test "should get update" do
    get physicians_update_url
    assert_response :success
  end

  test "should get destroy" do
    get physicians_destroy_url
    assert_response :success
  end

end
