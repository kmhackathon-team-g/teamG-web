require 'test_helper'

class PartnarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partnar = partnars(:one)
  end

  test "should get index" do
    get partnars_url
    assert_response :success
  end

  test "should get new" do
    get new_partnar_url
    assert_response :success
  end

  test "should create partnar" do
    assert_difference('Partnar.count') do
      post partnars_url, params: { partnar: { color: @partnar.color, name: @partnar.name, pid: @partnar.pid } }
    end

    assert_redirected_to partnar_url(Partnar.last)
  end

  test "should show partnar" do
    get partnar_url(@partnar)
    assert_response :success
  end

  test "should get edit" do
    get edit_partnar_url(@partnar)
    assert_response :success
  end

  test "should update partnar" do
    patch partnar_url(@partnar), params: { partnar: { color: @partnar.color, name: @partnar.name, pid: @partnar.pid } }
    assert_redirected_to partnar_url(@partnar)
  end

  test "should destroy partnar" do
    assert_difference('Partnar.count', -1) do
      delete partnar_url(@partnar)
    end

    assert_redirected_to partnars_url
  end
end
