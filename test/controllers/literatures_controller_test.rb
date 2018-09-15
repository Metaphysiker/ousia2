require 'test_helper'

class LiteraturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @literature = literatures(:one)
  end

  test "should get index" do
    get literatures_url
    assert_response :success
  end

  test "should get new" do
    get new_literature_url
    assert_response :success
  end

  test "should create literature" do
    assert_difference('Literature.count') do
      post literatures_url, params: { literature: { title: @literature.title } }
    end

    assert_redirected_to literature_url(Literature.last)
  end

  test "should show literature" do
    get literature_url(@literature)
    assert_response :success
  end

  test "should get edit" do
    get edit_literature_url(@literature)
    assert_response :success
  end

  test "should update literature" do
    patch literature_url(@literature), params: { literature: { title: @literature.title } }
    assert_redirected_to literature_url(@literature)
  end

  test "should destroy literature" do
    assert_difference('Literature.count', -1) do
      delete literature_url(@literature)
    end

    assert_redirected_to literatures_url
  end
end
