require 'test_helper'

class KumosControllerTest < ActionController::TestCase
  setup do
    @kumo = kumos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kumos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kumo" do
    assert_difference('Kumo.count') do
      post :create, kumo: { name: @kumo.name, title: @kumo.title, user_id: @kumo.user_id }
    end

    assert_redirected_to kumo_path(assigns(:kumo))
  end

  test "should show kumo" do
    get :show, id: @kumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kumo
    assert_response :success
  end

  test "should update kumo" do
    patch :update, id: @kumo, kumo: { name: @kumo.name, title: @kumo.title, user_id: @kumo.user_id }
    assert_redirected_to kumo_path(assigns(:kumo))
  end

  test "should destroy kumo" do
    assert_difference('Kumo.count', -1) do
      delete :destroy, id: @kumo
    end

    assert_redirected_to kumos_path
  end
end
