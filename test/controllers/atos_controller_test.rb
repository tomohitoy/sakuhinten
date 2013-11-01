require 'test_helper'

class AtosControllerTest < ActionController::TestCase
  setup do
    @ato = atos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ato" do
    assert_difference('Ato.count') do
      post :create, ato: { image: @ato.image, kumo_id: @ato.kumo_id }
    end

    assert_redirected_to ato_path(assigns(:ato))
  end

  test "should show ato" do
    get :show, id: @ato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ato
    assert_response :success
  end

  test "should update ato" do
    patch :update, id: @ato, ato: { image: @ato.image, kumo_id: @ato.kumo_id }
    assert_redirected_to ato_path(assigns(:ato))
  end

  test "should destroy ato" do
    assert_difference('Ato.count', -1) do
      delete :destroy, id: @ato
    end

    assert_redirected_to atos_path
  end
end
