require 'test_helper'

class HipstersControllerTest < ActionDispatch::IntegrationTest

  #called before every test
  setup do
    @hipster = hipsters(:one)
  end

  teardown do
    Rails.cache.clear
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get new" do
    get new_hipster_path
    assert_response :success
  end

  test "should get create" do
    get hipsters_create_path
    assert_response :success
  end

  test "should get show" do
    #hipster = hipsters(:one)
    get hipster_url(@hipster)
    assert_response :success
  end

  test "should get edit" do
    #hipster = hipsters(:one)
    get edit_hipster_path(@hipster)
    assert_response :success
  end

  test "should get delete" do
    #hipster = hipsters(:one)
    assert_difference('Hipster.count', -1) do
      delete hipster_url(@hipster)
    end
    assert_response :success
    assert_redirected_to hipsters_path
  end

end
