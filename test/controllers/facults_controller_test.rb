require 'test_helper'

class FacultsControllerTest < ActionController::TestCase
  setup do
    @facult = facults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facult" do
    assert_difference('Facult.count') do
      post :create, facult: { info: @facult.info, logo: @facult.logo, name: @facult.name }
    end

    assert_redirected_to facult_path(assigns(:facult))
  end

  test "should show facult" do
    get :show, id: @facult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facult
    assert_response :success
  end

  test "should update facult" do
    patch :update, id: @facult, facult: { info: @facult.info, logo: @facult.logo, name: @facult.name }
    assert_redirected_to facult_path(assigns(:facult))
  end

  test "should destroy facult" do
    assert_difference('Facult.count', -1) do
      delete :destroy, id: @facult
    end

    assert_redirected_to facults_path
  end
end
