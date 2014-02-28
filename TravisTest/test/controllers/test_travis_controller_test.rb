require 'test_helper'

class TestTravisControllerTest < ActionController::TestCase
  setup do
    @test_travi = test_travis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_travis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_travi" do
    assert_difference('TestTravi.count') do
      post :create, test_travi: { test1: @test_travi.test1, test2: @test_travi.test2 }
    end

    assert_redirected_to test_travi_path(assigns(:test_travi))
  end

  test "should show test_travi" do
    get :show, id: @test_travi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_travi
    assert_response :success
  end

  test "should update test_travi" do
    patch :update, id: @test_travi, test_travi: { test1: @test_travi.test1, test2: @test_travi.test2 }
    assert_redirected_to test_travi_path(assigns(:test_travi))
  end

  test "should destroy test_travi" do
    assert_difference('TestTravi.count', -1) do
      delete :destroy, id: @test_travi
    end

    assert_redirected_to test_travis_path
  end
end
