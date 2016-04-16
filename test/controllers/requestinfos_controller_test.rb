require 'test_helper'

class RequestinfosControllerTest < ActionController::TestCase
  setup do
    @requestinfo = requestinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requestinfos)
  end

  test "should create requestinfo" do
    assert_difference('Requestinfo.count') do
      post :create, requestinfo: { filename: @requestinfo.filename, key: @requestinfo.key }
    end

    assert_response 201
  end

  test "should show requestinfo" do
    get :show, id: @requestinfo
    assert_response :success
  end

  test "should update requestinfo" do
    put :update, id: @requestinfo, requestinfo: { filename: @requestinfo.filename, key: @requestinfo.key }
    assert_response 204
  end

  test "should destroy requestinfo" do
    assert_difference('Requestinfo.count', -1) do
      delete :destroy, id: @requestinfo
    end

    assert_response 204
  end
end
