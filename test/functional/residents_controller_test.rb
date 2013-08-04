require 'test_helper'

class ResidentsControllerTest < ActionController::TestCase
  setup do
    @resident = residents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resident" do
    assert_difference('Resident.count') do
      post :create, resident: { email,: @resident.email,, f_name,: @resident.f_name,, l_name,: @resident.l_name,, location_id: @resident.location_id, phone1,: @resident.phone1,, phone2,: @resident.phone2,, photo: @resident.photo }
    end

    assert_redirected_to resident_path(assigns(:resident))
  end

  test "should show resident" do
    get :show, id: @resident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resident
    assert_response :success
  end

  test "should update resident" do
    put :update, id: @resident, resident: { email,: @resident.email,, f_name,: @resident.f_name,, l_name,: @resident.l_name,, location_id: @resident.location_id, phone1,: @resident.phone1,, phone2,: @resident.phone2,, photo: @resident.photo }
    assert_redirected_to resident_path(assigns(:resident))
  end

  test "should destroy resident" do
    assert_difference('Resident.count', -1) do
      delete :destroy, id: @resident
    end

    assert_redirected_to residents_path
  end
end
