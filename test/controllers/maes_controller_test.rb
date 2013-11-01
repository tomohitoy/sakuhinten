require 'test_helper'

class MaesControllerTest < ActionController::TestCase
  setup do
    @mae = maes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mae" do
    assert_difference('Mae.count') do
      post :create, mae: { image: @mae.image, kumo_id: @mae.kumo_id }
    end

    assert_redirected_to mae_path(assigns(:mae))
  end

  test "should show mae" do
    get :show, id: @mae
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mae
    assert_response :success
  end

  test "should update mae" do
    patch :update, id: @mae, mae: { image: @mae.image, kumo_id: @mae.kumo_id }
    assert_redirected_to mae_path(assigns(:mae))
  end

  test "should destroy mae" do
    assert_difference('Mae.count', -1) do
      delete :destroy, id: @mae
    end

    assert_redirected_to maes_path
  end
end
