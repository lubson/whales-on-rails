require 'test_helper'

class CRodinnyStavsControllerTest < ActionController::TestCase
  setup do
    @c_rodinny_stav = c_rodinny_stavs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_rodinny_stavs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_rodinny_stav" do
    assert_difference('CRodinnyStav.count') do
      post :create, c_rodinny_stav: { kod: @c_rodinny_stav.kod, nazev: @c_rodinny_stav.nazev, poradi: @c_rodinny_stav.poradi }
    end

    assert_redirected_to c_rodinny_stav_path(assigns(:c_rodinny_stav))
  end

  test "should show c_rodinny_stav" do
    get :show, id: @c_rodinny_stav
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_rodinny_stav
    assert_response :success
  end

  test "should update c_rodinny_stav" do
    patch :update, id: @c_rodinny_stav, c_rodinny_stav: { kod: @c_rodinny_stav.kod, nazev: @c_rodinny_stav.nazev, poradi: @c_rodinny_stav.poradi }
    assert_redirected_to c_rodinny_stav_path(assigns(:c_rodinny_stav))
  end

  test "should destroy c_rodinny_stav" do
    assert_difference('CRodinnyStav.count', -1) do
      delete :destroy, id: @c_rodinny_stav
    end

    assert_redirected_to c_rodinny_stavs_path
  end
end
