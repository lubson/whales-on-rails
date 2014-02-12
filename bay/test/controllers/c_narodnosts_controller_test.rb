require 'test_helper'

class CNarodnostsControllerTest < ActionController::TestCase
  setup do
    @c_narodnost = c_narodnosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_narodnosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_narodnost" do
    assert_difference('CNarodnost.count') do
      post :create, c_narodnost: { kod: @c_narodnost.kod, nazev: @c_narodnost.nazev, poradi: @c_narodnost.poradi }
    end

    assert_redirected_to c_narodnost_path(assigns(:c_narodnost))
  end

  test "should show c_narodnost" do
    get :show, id: @c_narodnost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_narodnost
    assert_response :success
  end

  test "should update c_narodnost" do
    patch :update, id: @c_narodnost, c_narodnost: { kod: @c_narodnost.kod, nazev: @c_narodnost.nazev, poradi: @c_narodnost.poradi }
    assert_redirected_to c_narodnost_path(assigns(:c_narodnost))
  end

  test "should destroy c_narodnost" do
    assert_difference('CNarodnost.count', -1) do
      delete :destroy, id: @c_narodnost
    end

    assert_redirected_to c_narodnosts_path
  end
end
