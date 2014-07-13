require 'test_helper'

class CmasControllerTest < ActionController::TestCase
  setup do
    @cma = cmas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cmas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cma" do
    assert_difference('Cma.count') do
      post :create, cma: { name: @cma.name }
    end

    assert_redirected_to cma_path(assigns(:cma))
  end

  test "should show cma" do
    get :show, id: @cma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cma
    assert_response :success
  end

  test "should update cma" do
    patch :update, id: @cma, cma: { name: @cma.name }
    assert_redirected_to cma_path(assigns(:cma))
  end

  test "should destroy cma" do
    assert_difference('Cma.count', -1) do
      delete :destroy, id: @cma
    end

    assert_redirected_to cmas_path
  end
end
