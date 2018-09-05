require 'test_helper'

class DeptsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get depts_index_url
    assert_response :success
  end

  test "should get show" do
    get depts_show_url
    assert_response :success
  end

  test "should get new" do
    get depts_new_url
    assert_response :success
  end

  test "should get edit" do
    get depts_edit_url
    assert_response :success
  end

end
