require 'test_helper'

class PiecesControllerTest < ActionController::TestCase
  setup do
    @piece = pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pieces)
  end

  test "should create piece" do
    assert_difference('Piece.count') do
      post :create, piece: { artist_id: @piece.artist_id, exhibition_id: @piece.exhibition_id, medium: @piece.medium, price: @piece.price, size: @piece.size, style: @piece.style, subject: @piece.subject, title: @piece.title }
    end

    assert_response 201
  end

  test "should show piece" do
    get :show, id: @piece
    assert_response :success
  end

  test "should update piece" do
    put :update, id: @piece, piece: { artist_id: @piece.artist_id, exhibition_id: @piece.exhibition_id, medium: @piece.medium, price: @piece.price, size: @piece.size, style: @piece.style, subject: @piece.subject, title: @piece.title }
    assert_response 204
  end

  test "should destroy piece" do
    assert_difference('Piece.count', -1) do
      delete :destroy, id: @piece
    end

    assert_response 204
  end
end
