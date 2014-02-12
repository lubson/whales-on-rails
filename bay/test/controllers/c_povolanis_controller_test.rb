require 'test_helper'

class CPovolanisControllerTest < ActionController::TestCase
  setup do
    @c_povolani = c_povolanis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_povolanis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_povolani" do
    assert_difference('CPovolani.count') do
      post :create, c_povolani: { kod: @c_povolani.kod, nazev: @c_povolani.nazev, poradi: @c_povolani.poradi }
    end

    assert_redirected_to c_povolani_path(assigns(:c_povolani))
  end

  test "should show c_povolani" do
    get :show, id: @c_povolani
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_povolani
    assert_response :success
  end

  test "should update c_povolani" do
    patch :update, id: @c_povolani, c_povolani: { kod: @c_povolani.kod, nazev: @c_povolani.nazev, poradi: @c_povolani.poradi }
    assert_redirected_to c_povolani_path(assigns(:c_povolani))
  end

  test "should destroy c_povolani" do
    assert_difference('CPovolani.count', -1) do
      delete :destroy, id: @c_povolani
    end

    assert_redirected_to c_povolanis_path
  end
end
