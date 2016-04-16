require 'test_helper'

class RequestDataControllerTest < ActionController::TestCase
  setup do
    @request_datum = request_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_data)
  end

  test "should create request_datum" do
    assert_difference('RequestDatum.count') do
      post :create, request_datum: { filename: @request_datum.filename, key: @request_datum.key }
    end

    assert_response 201
  end

  test "should show request_datum" do
    get :show, id: @request_datum
    assert_response :success
  end

  test "should update request_datum" do
    put :update, id: @request_datum, request_datum: { filename: @request_datum.filename, key: @request_datum.key }
    assert_response 204
  end

  test "should destroy request_datum" do
    assert_difference('RequestDatum.count', -1) do
      delete :destroy, id: @request_datum
    end

    assert_response 204
  end
end
