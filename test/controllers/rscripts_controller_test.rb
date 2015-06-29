require 'test_helper'

class RscriptsControllerTest < ActionController::TestCase
  setup do
    @rscript = rscripts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rscripts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rscript" do
    assert_difference('Rscript.count') do
      post :create, rscript: { code: @rscript.code, title: @rscript.title }
    end

    assert_redirected_to rscript_path(assigns(:rscript))
  end

  test "should show rscript" do
    get :show, id: @rscript
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rscript
    assert_response :success
  end

  test "should update rscript" do
    patch :update, id: @rscript, rscript: { code: @rscript.code, title: @rscript.title }
    assert_redirected_to rscript_path(assigns(:rscript))
  end

  test "should destroy rscript" do
    assert_difference('Rscript.count', -1) do
      delete :destroy, id: @rscript
    end

    assert_redirected_to rscripts_path
  end
end
