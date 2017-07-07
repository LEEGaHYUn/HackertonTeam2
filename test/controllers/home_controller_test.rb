require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get category1" do
    get :category1
    assert_response :success
  end

  test "should get category2" do
    get :category2
    assert_response :success
  end

  test "should get category3" do
    get :category3
    assert_response :success
  end

  test "should get category4" do
    get :category4
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
