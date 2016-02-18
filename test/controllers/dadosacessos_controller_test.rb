require 'test_helper'

class DadosacessosControllerTest < ActionController::TestCase
  setup do
    @dadosacesso = dadosacessos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dadosacessos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dadosacesso" do
    assert_difference('Dadosacesso.count') do
      post :create, dadosacesso: { dac_data_acesso: @dadosacesso.dac_data_acesso, dac_ip: @dadosacesso.dac_ip, usuario_id: @dadosacesso.usuario_id }
    end

    assert_redirected_to dadosacesso_path(assigns(:dadosacesso))
  end

  test "should show dadosacesso" do
    get :show, id: @dadosacesso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dadosacesso
    assert_response :success
  end

  test "should update dadosacesso" do
    patch :update, id: @dadosacesso, dadosacesso: { dac_data_acesso: @dadosacesso.dac_data_acesso, dac_ip: @dadosacesso.dac_ip, usuario_id: @dadosacesso.usuario_id }
    assert_redirected_to dadosacesso_path(assigns(:dadosacesso))
  end

  test "should destroy dadosacesso" do
    assert_difference('Dadosacesso.count', -1) do
      delete :destroy, id: @dadosacesso
    end

    assert_redirected_to dadosacessos_path
  end
end
