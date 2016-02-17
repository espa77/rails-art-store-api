require 'test_helper'

class ExhibitionsControllerTest < ActionController::TestCase
  setup do
    @exhibition = exhibitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitions)
  end

  test "should create exhibition" do
    assert_difference('Exhibition.count') do
      post :create, exhibition: { date: @exhibition.date, location: @exhibition.location }
    end

    assert_response 201
  end

  test "should show exhibition" do
    get :show, id: @exhibition
    assert_response :success
  end

  test "should update exhibition" do
    put :update, id: @exhibition, exhibition: { date: @exhibition.date, location: @exhibition.location }
    assert_response 204
  end

  test "should destroy exhibition" do
    assert_difference('Exhibition.count', -1) do
      delete :destroy, id: @exhibition
    end

    assert_response 204
  end
end
