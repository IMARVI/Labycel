require 'test_helper'

class UsuarioProyectosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_proyecto = usuario_proyectos(:one)
  end

  test "should get index" do
    get usuario_proyectos_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_proyecto_url
    assert_response :success
  end

  test "should create usuario_proyecto" do
    assert_difference('UsuarioProyecto.count') do
      post usuario_proyectos_url, params: { usuario_proyecto: { proyecto_id: @usuario_proyecto.proyecto_id, usuario_id: @usuario_proyecto.usuario_id } }
    end

    assert_redirected_to usuario_proyecto_url(UsuarioProyecto.last)
  end

  test "should show usuario_proyecto" do
    get usuario_proyecto_url(@usuario_proyecto)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_proyecto_url(@usuario_proyecto)
    assert_response :success
  end

  test "should update usuario_proyecto" do
    patch usuario_proyecto_url(@usuario_proyecto), params: { usuario_proyecto: { proyecto_id: @usuario_proyecto.proyecto_id, usuario_id: @usuario_proyecto.usuario_id } }
    assert_redirected_to usuario_proyecto_url(@usuario_proyecto)
  end

  test "should destroy usuario_proyecto" do
    assert_difference('UsuarioProyecto.count', -1) do
      delete usuario_proyecto_url(@usuario_proyecto)
    end

    assert_redirected_to usuario_proyectos_url
  end
end
