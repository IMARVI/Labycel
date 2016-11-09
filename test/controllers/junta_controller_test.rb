require 'test_helper'

class JuntaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @juntum = junta(:one)
  end

  test "should get index" do
    get junta_url
    assert_response :success
  end

  test "should get new" do
    get new_juntum_url
    assert_response :success
  end

  test "should create juntum" do
    assert_difference('Juntum.count') do
      post junta_url, params: { juntum: { descripcion: @juntum.descripcion, fecha: @juntum.fecha, nombre: @juntum.nombre } }
    end

    assert_redirected_to juntum_url(Juntum.last)
  end

  test "should show juntum" do
    get juntum_url(@juntum)
    assert_response :success
  end

  test "should get edit" do
    get edit_juntum_url(@juntum)
    assert_response :success
  end

  test "should update juntum" do
    patch juntum_url(@juntum), params: { juntum: { descripcion: @juntum.descripcion, fecha: @juntum.fecha, nombre: @juntum.nombre } }
    assert_redirected_to juntum_url(@juntum)
  end

  test "should destroy juntum" do
    assert_difference('Juntum.count', -1) do
      delete juntum_url(@juntum)
    end

    assert_redirected_to junta_url
  end
end
