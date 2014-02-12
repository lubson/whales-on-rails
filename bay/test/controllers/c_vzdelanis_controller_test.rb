require 'test_helper'

class CVzdelanisControllerTest < ActionController::TestCase
  setup do
    @c_vzdelani = c_vzdelanis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_vzdelanis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_vzdelani" do
    assert_difference('CVzdelani.count') do
      post :create, c_vzdelani: { kod: @c_vzdelani.kod, nazev: @c_vzdelani.nazev, poradi: @c_vzdelani.poradi }
    end

    assert_redirected_to c_vzdelani_path(assigns(:c_vzdelani))
  end

  test "should show c_vzdelani" do
    get :show, id: @c_vzdelani
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_vzdelani
    assert_response :success
  end

  test "should update c_vzdelani" do
    patch :update, id: @c_vzdelani, c_vzdelani: { kod: @c_vzdelani.kod, nazev: @c_vzdelani.nazev, poradi: @c_vzdelani.poradi }
    assert_redirected_to c_vzdelani_path(assigns(:c_vzdelani))
  end

  test "should destroy c_vzdelani" do
    assert_difference('CVzdelani.count', -1) do
      delete :destroy, id: @c_vzdelani
    end

    assert_redirected_to c_vzdelanis_path
  end
end
