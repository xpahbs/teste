require 'test_helper'

class TurmasControllerTest < ActionController::TestCase
  setup do
    @turma = turmas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turmas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turma" do
    assert_difference('Turma.count') do
      post :create, turma: { curso_id: @turma.curso_id, escola_id: @turma.escola_id, tur_horario_entrada: @turma.tur_horario_entrada, tur_horario_saida: @turma.tur_horario_saida, tur_nome: @turma.tur_nome, tur_status: @turma.tur_status, tur_vagas: @turma.tur_vagas }
    end

    assert_redirected_to turma_path(assigns(:turma))
  end

  test "should show turma" do
    get :show, id: @turma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turma
    assert_response :success
  end

  test "should update turma" do
    patch :update, id: @turma, turma: { curso_id: @turma.curso_id, escola_id: @turma.escola_id, tur_horario_entrada: @turma.tur_horario_entrada, tur_horario_saida: @turma.tur_horario_saida, tur_nome: @turma.tur_nome, tur_status: @turma.tur_status, tur_vagas: @turma.tur_vagas }
    assert_redirected_to turma_path(assigns(:turma))
  end

  test "should destroy turma" do
    assert_difference('Turma.count', -1) do
      delete :destroy, id: @turma
    end

    assert_redirected_to turmas_path
  end
end
