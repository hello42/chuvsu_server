require 'test_helper'

class AbiturientsControllerTest < ActionController::TestCase
  setup do
    @abiturient = abiturients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abiturients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abiturient" do
    assert_difference('Abiturient.count') do
      post :create, abiturient: { body: @abiturient.body, img: @abiturient.img, title: @abiturient.title, url: @abiturient.url }
    end

    assert_redirected_to abiturient_path(assigns(:abiturient))
  end

  test "should show abiturient" do
    get :show, id: @abiturient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abiturient
    assert_response :success
  end

  test "should update abiturient" do
    patch :update, id: @abiturient, abiturient: { body: @abiturient.body, img: @abiturient.img, title: @abiturient.title, url: @abiturient.url }
    assert_redirected_to abiturient_path(assigns(:abiturient))
  end

  test "should destroy abiturient" do
    assert_difference('Abiturient.count', -1) do
      delete :destroy, id: @abiturient
    end

    assert_redirected_to abiturients_path
  end
end
