require 'test_helper'

class UsuarioJuntaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_juntum = usuario_junta(:one)
  end

  test "should get index" do
    get usuario_junta_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_juntum_url
    assert_response :success
  end

  test "should create usuario_juntum" do
    assert_difference('UsuarioJuntum.count') do
      post usuario_junta_url, params: { usuario_juntum: { int: @usuario_juntum.int, int: @usuario_juntum.int, juntum_id: @usuario_juntum.juntum_id, usuario_id: @usuario_juntum.usuario_id } }
    end

    assert_redirected_to usuario_juntum_url(UsuarioJuntum.last)
  end

  test "should show usuario_juntum" do
    get usuario_juntum_url(@usuario_juntum)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_juntum_url(@usuario_juntum)
    assert_response :success
  end

  test "should update usuario_juntum" do
    patch usuario_juntum_url(@usuario_juntum), params: { usuario_juntum: { int: @usuario_juntum.int, int: @usuario_juntum.int, juntum_id: @usuario_juntum.juntum_id, usuario_id: @usuario_juntum.usuario_id } }
    assert_redirected_to usuario_juntum_url(@usuario_juntum)
  end

  test "should destroy usuario_juntum" do
    assert_difference('UsuarioJuntum.count', -1) do
      delete usuario_juntum_url(@usuario_juntum)
    end

    assert_redirected_to usuario_junta_url
  end
end
