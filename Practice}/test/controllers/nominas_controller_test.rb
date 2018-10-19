require 'test_helper'

class NominasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nomina = nominas(:one)
  end

  test "should get index" do
    get nominas_url
    assert_response :success
  end

  test "should get new" do
    get new_nomina_url
    assert_response :success
  end

  test "should create nomina" do
    assert_difference('Nomina.count') do
      post nominas_url, params: { nomina: { email: @nomina.email, position: @nomina.position, salary: @nomina.salary } }
    end

    assert_redirected_to nomina_url(Nomina.last)
  end

  test "should show nomina" do
    get nomina_url(@nomina)
    assert_response :success
  end

  test "should get edit" do
    get edit_nomina_url(@nomina)
    assert_response :success
  end

  test "should update nomina" do
    patch nomina_url(@nomina), params: { nomina: { email: @nomina.email, position: @nomina.position, salary: @nomina.salary } }
    assert_redirected_to nomina_url(@nomina)
  end

  test "should destroy nomina" do
    assert_difference('Nomina.count', -1) do
      delete nomina_url(@nomina)
    end

    assert_redirected_to nominas_url
  end
end
