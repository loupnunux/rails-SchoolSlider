require 'test_helper'

class BiblicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biblical = biblicals(:one)
  end

  test "should get index" do
    get biblicals_url
    assert_response :success
  end

  test "should get new" do
    get new_biblical_url
    assert_response :success
  end

  test "should create biblical" do
    assert_difference('Biblical.count') do
      post biblicals_url, params: { biblical: { quote: @biblical.quote, source: @biblical.source } }
    end

    assert_redirected_to biblical_url(Biblical.last)
  end

  test "should show biblical" do
    get biblical_url(@biblical)
    assert_response :success
  end

  test "should get edit" do
    get edit_biblical_url(@biblical)
    assert_response :success
  end

  test "should update biblical" do
    patch biblical_url(@biblical), params: { biblical: { quote: @biblical.quote, source: @biblical.source } }
    assert_redirected_to biblical_url(@biblical)
  end

  test "should destroy biblical" do
    assert_difference('Biblical.count', -1) do
      delete biblical_url(@biblical)
    end

    assert_redirected_to biblicals_url
  end
end
