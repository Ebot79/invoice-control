require 'test_helper'

class BilleesControllerTest < ActionController::TestCase
  setup do
    @billee = billees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billee" do
    assert_difference('Billee.count') do
      post :create, billee: { email: @billee.email, f_name: @billee.f_name, l_name: @billee.l_name, location_id: @billee.location_id, phone1: @billee.phone1, phone2: @billee.phone2, photo: @billee.photo }
    end

    assert_redirected_to billee_path(assigns(:billee))
  end

  test "should show billee" do
    get :show, id: @billee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billee
    assert_response :success
  end

  test "should update billee" do
    put :update, id: @billee, billee: { email: @billee.email, f_name: @billee.f_name, l_name: @billee.l_name, location_id: @billee.location_id, phone1: @billee.phone1, phone2: @billee.phone2, photo: @billee.photo }
    assert_redirected_to billee_path(assigns(:billee))
  end

  test "should destroy billee" do
    assert_difference('Billee.count', -1) do
      delete :destroy, id: @billee
    end

    assert_redirected_to billees_path
  end
end
