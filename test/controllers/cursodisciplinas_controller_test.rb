require 'test_helper'

class CursodisciplinasControllerTest < ActionController::TestCase
  setup do
    @cursodisciplina = cursodisciplinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cursodisciplinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cursodisciplina" do
    assert_difference('Cursodisciplina.count') do
      post :create, cursodisciplina: { curso_id: @cursodisciplina.curso_id, disciplina_id: @cursodisciplina.disciplina_id }
    end

    assert_redirected_to cursodisciplina_path(assigns(:cursodisciplina))
  end

  test "should show cursodisciplina" do
    get :show, id: @cursodisciplina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cursodisciplina
    assert_response :success
  end

  test "should update cursodisciplina" do
    patch :update, id: @cursodisciplina, cursodisciplina: { curso_id: @cursodisciplina.curso_id, disciplina_id: @cursodisciplina.disciplina_id }
    assert_redirected_to cursodisciplina_path(assigns(:cursodisciplina))
  end

  test "should destroy cursodisciplina" do
    assert_difference('Cursodisciplina.count', -1) do
      delete :destroy, id: @cursodisciplina
    end

    assert_redirected_to cursodisciplinas_path
  end
end
