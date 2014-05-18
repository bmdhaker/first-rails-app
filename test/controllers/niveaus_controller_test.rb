require 'test_helper'

class NiveausControllerTest < ActionController::TestCase
  setup do
    @niveau = niveaus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:niveaus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create niveau" do
    assert_difference('Niveau.count') do
      post :create, niveau: { lib_niv: @niveau.lib_niv }
    end

    assert_redirected_to niveau_path(assigns(:niveau))
  end

  test "should show niveau" do
    get :show, id: @niveau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @niveau
    assert_response :success
  end

  test "should update niveau" do
    patch :update, id: @niveau, niveau: { lib_niv: @niveau.lib_niv }
    assert_redirected_to niveau_path(assigns(:niveau))
  end

  test "should destroy niveau" do
    assert_difference('Niveau.count', -1) do
      delete :destroy, id: @niveau
    end

    assert_redirected_to niveaus_path
  end
end
