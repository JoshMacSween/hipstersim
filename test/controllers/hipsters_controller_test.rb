require 'test_helper'

class HipstersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hipsters_index_url
    assert_response :success
  end

  test "should get new" do
    get hipsters_new_url
    assert_response :success
  end

  test "should get create" do
    get hipsters_create_url
    assert_response :success
  end

  test "should get show" do
    get hipsters_show_url
    assert_response :success
  end

  test "should get edit" do
    get hipsters_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get hipsters_destroy_url
    assert_response :success
  end

end
