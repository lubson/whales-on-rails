require 'test_helper'

class UcastniksControllerTest < ActionController::TestCase
  setup do
    @ucastnik = ucastniks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ucastniks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ucastnik" do
    assert_difference('Ucastnik.count') do
      post :create, ucastnik: { jmeno: @ucastnik.jmeno, narozen: @ucastnik.narozen, pohlavi: @ucastnik.pohlavi, prijmeni: @ucastnik.prijmeni }
    end

    assert_redirected_to ucastnik_path(assigns(:ucastnik))
  end

  test "should show ucastnik" do
    get :show, id: @ucastnik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ucastnik
    assert_response :success
  end

  test "should update ucastnik" do
    patch :update, id: @ucastnik, ucastnik: { jmeno: @ucastnik.jmeno, narozen: @ucastnik.narozen, pohlavi: @ucastnik.pohlavi, prijmeni: @ucastnik.prijmeni }
    assert_redirected_to ucastnik_path(assigns(:ucastnik))
  end

  test "should destroy ucastnik" do
    assert_difference('Ucastnik.count', -1) do
      delete :destroy, id: @ucastnik
    end

    assert_redirected_to ucastniks_path
  end
end
