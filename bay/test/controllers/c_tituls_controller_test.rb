require 'test_helper'

class CTitulsControllerTest < ActionController::TestCase
  setup do
    @c_titul = c_tituls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_tituls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_titul" do
    assert_difference('CTitul.count') do
      post :create, c_titul: { kod: @c_titul.kod, nazev: @c_titul.nazev, poradi: @c_titul.poradi }
    end

    assert_redirected_to c_titul_path(assigns(:c_titul))
  end

  test "should show c_titul" do
    get :show, id: @c_titul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_titul
    assert_response :success
  end

  test "should update c_titul" do
    patch :update, id: @c_titul, c_titul: { kod: @c_titul.kod, nazev: @c_titul.nazev, poradi: @c_titul.poradi }
    assert_redirected_to c_titul_path(assigns(:c_titul))
  end

  test "should destroy c_titul" do
    assert_difference('CTitul.count', -1) do
      delete :destroy, id: @c_titul
    end

    assert_redirected_to c_tituls_path
  end
end
