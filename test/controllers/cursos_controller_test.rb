require 'test_helper'

class CursosControllerTest < ActionController::TestCase
  setup do
    @curso = cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curso" do
    assert_difference('Curso.count') do
      post :create, curso: { cur_data_inicio: @curso.cur_data_inicio, cur_data_termino: @curso.cur_data_termino, cur_nome: @curso.cur_nome, cur_status: @curso.cur_status, cur_tempo_duracao: @curso.cur_tempo_duracao, cur_valor: @curso.cur_valor }
    end

    assert_redirected_to curso_path(assigns(:curso))
  end

  test "should show curso" do
    get :show, id: @curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curso
    assert_response :success
  end

  test "should update curso" do
    patch :update, id: @curso, curso: { cur_data_inicio: @curso.cur_data_inicio, cur_data_termino: @curso.cur_data_termino, cur_nome: @curso.cur_nome, cur_status: @curso.cur_status, cur_tempo_duracao: @curso.cur_tempo_duracao, cur_valor: @curso.cur_valor }
    assert_redirected_to curso_path(assigns(:curso))
  end

  test "should destroy curso" do
    assert_difference('Curso.count', -1) do
      delete :destroy, id: @curso
    end

    assert_redirected_to cursos_path
  end
end
