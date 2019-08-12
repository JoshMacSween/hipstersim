# frozen_string_literal: true

require 'test_helper'

class HipstersControllerTest < ActionDispatch::IntegrationTest
  # called before every test
  setup do
    @hipster = hipsters(:one)
  end

  teardown do
    Rails.cache.clear
  end

  test 'should get index' do
    get root_path
    assert_response :success
  end

  test 'should get new' do
    get new_hipster_path
    assert_response :success
  end

  test 'should create hipster' do
    post hipsters_path params: { hipster: { name: 'Josh', beer: 'Belgian', coffee: 'Right Now', quote: 'Stay Curious, Friends!' } }
    assert_redirected_to hipsters_path
  end

  test 'should get show' do
    # hipster = hipsters(:one)
    get hipster_url(@hipster)
    assert_response :success
  end

  test 'should get edit' do
    # hipster = hipsters(:one)
    get edit_hipster_path(@hipster)
    assert_response :success
  end

  test 'should get delete' do
    # hipster = hipsters(:one)
    assert_difference('Hipster.count', -1) do
      delete hipster_path(@hipster)
    end
    assert_redirected_to hipsters_path
  end
end
