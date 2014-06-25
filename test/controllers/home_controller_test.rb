require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get update_artists" do
    get :update_artists
    assert_response :success
  end

  test "should get update_songs" do
    get :update_songs
    assert_response :success
  end

end
