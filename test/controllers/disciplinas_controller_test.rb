require 'test_helper'

class DisciplinasControllerTest < ActionController::TestCase
  setup do
    @disciplina = disciplinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disciplinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disciplina" do
    assert_difference('Disciplina.count') do
      post :create, disciplina: { dis_imagem: @disciplina.dis_imagem, dis_nome: @disciplina.dis_nome, dis_status: @disciplina.dis_status }
    end

    assert_redirected_to disciplina_path(assigns(:disciplina))
  end

  test "should show disciplina" do
    get :show, id: @disciplina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disciplina
    assert_response :success
  end

  test "should update disciplina" do
    patch :update, id: @disciplina, disciplina: { dis_imagem: @disciplina.dis_imagem, dis_nome: @disciplina.dis_nome, dis_status: @disciplina.dis_status }
    assert_redirected_to disciplina_path(assigns(:disciplina))
  end

  test "should destroy disciplina" do
    assert_difference('Disciplina.count', -1) do
      delete :destroy, id: @disciplina
    end

    assert_redirected_to disciplinas_path
  end
end
