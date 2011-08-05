require 'test_helper'

class BankInfosControllerTest < ActionController::TestCase
  setup do
    @bank_info = bank_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_info" do
    assert_difference('BankInfo.count') do
      post :create, :bank_info => @bank_info.attributes
    end

    assert_redirected_to bank_info_path(assigns(:bank_info))
  end

  test "should show bank_info" do
    get :show, :id => @bank_info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bank_info.to_param
    assert_response :success
  end

  test "should update bank_info" do
    put :update, :id => @bank_info.to_param, :bank_info => @bank_info.attributes
    assert_redirected_to bank_info_path(assigns(:bank_info))
  end

  test "should destroy bank_info" do
    assert_difference('BankInfo.count', -1) do
      delete :destroy, :id => @bank_info.to_param
    end

    assert_redirected_to bank_infos_path
  end
end
