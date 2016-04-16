require 'test_helper'

class KeyfilesControllerTest < ActionController::TestCase
  setup do
    @keyfile = keyfiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keyfiles)
  end

  test "should create keyfile" do
    assert_difference('Keyfile.count') do
      post :create, keyfile: { filename: @keyfile.filename, url: @keyfile.url }
    end

    assert_response 201
  end

  test "should show keyfile" do
    get :show, id: @keyfile
    assert_response :success
  end

  test "should update keyfile" do
    put :update, id: @keyfile, keyfile: { filename: @keyfile.filename, url: @keyfile.url }
    assert_response 204
  end

  test "should destroy keyfile" do
    assert_difference('Keyfile.count', -1) do
      delete :destroy, id: @keyfile
    end

    assert_response 204
  end
end
