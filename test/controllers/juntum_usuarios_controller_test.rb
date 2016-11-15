require 'test_helper'

class JuntumUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @juntum_usuario = juntum_usuarios(:one)
  end

  test "should get index" do
    get juntum_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_juntum_usuario_url
    assert_response :success
  end

  test "should create juntum_usuario" do
    assert_difference('JuntumUsuario.count') do
      post juntum_usuarios_url, params: { juntum_usuario: {  } }
    end

    assert_redirected_to juntum_usuario_url(JuntumUsuario.last)
  end

  test "should show juntum_usuario" do
    get juntum_usuario_url(@juntum_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_juntum_usuario_url(@juntum_usuario)
    assert_response :success
  end

  test "should update juntum_usuario" do
    patch juntum_usuario_url(@juntum_usuario), params: { juntum_usuario: {  } }
    assert_redirected_to juntum_usuario_url(@juntum_usuario)
  end

  test "should destroy juntum_usuario" do
    assert_difference('JuntumUsuario.count', -1) do
      delete juntum_usuario_url(@juntum_usuario)
    end

    assert_redirected_to juntum_usuarios_url
  end
end
