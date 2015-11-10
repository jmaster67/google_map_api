require 'test_helper'

class WeedpensControllerTest < ActionController::TestCase
  setup do
    @weedpen = weedpens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weedpens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weedpen" do
    assert_difference('Weedpen.count') do
      post :create, weedpen: { address: @weedpen.address, description: @weedpen.description, latitude: @weedpen.latitude, longitude: @weedpen.longitude, title: @weedpen.title }
    end

    assert_redirected_to weedpen_path(assigns(:weedpen))
  end

  test "should show weedpen" do
    get :show, id: @weedpen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weedpen
    assert_response :success
  end

  test "should update weedpen" do
    patch :update, id: @weedpen, weedpen: { address: @weedpen.address, description: @weedpen.description, latitude: @weedpen.latitude, longitude: @weedpen.longitude, title: @weedpen.title }
    assert_redirected_to weedpen_path(assigns(:weedpen))
  end

  test "should destroy weedpen" do
    assert_difference('Weedpen.count', -1) do
      delete :destroy, id: @weedpen
    end

    assert_redirected_to weedpens_path
  end
end
