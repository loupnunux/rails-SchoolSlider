require 'test_helper'

class SaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saint = saints(:one)
  end

  test "should get index" do
    get saints_url
    assert_response :success
  end

  test "should get new" do
    get new_saint_url
    assert_response :success
  end

  test "should create saint" do
    assert_difference('Saint.count') do
      post saints_url, params: { saint: { day: @saint.day, name: @saint.name } }
    end

    assert_redirected_to saint_url(Saint.last)
  end

  test "should show saint" do
    get saint_url(@saint)
    assert_response :success
  end

  test "should get edit" do
    get edit_saint_url(@saint)
    assert_response :success
  end

  test "should update saint" do
    patch saint_url(@saint), params: { saint: { day: @saint.day, name: @saint.name } }
    assert_redirected_to saint_url(@saint)
  end

  test "should destroy saint" do
    assert_difference('Saint.count', -1) do
      delete saint_url(@saint)
    end

    assert_redirected_to saints_url
  end
end
