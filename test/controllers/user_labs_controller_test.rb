require 'test_helper'

class UserLabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_lab = user_labs(:one)
  end

  test "should get index" do
    get user_labs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_lab_url
    assert_response :success
  end

  test "should create user_lab" do
    assert_difference('UserLab.count') do
      post user_labs_url, params: { user_lab: { class_grade: @user_lab.class_grade, lab_id: @user_lab.lab_id, report_grade: @user_lab.report_grade, user_id: @user_lab.user_id } }
    end

    assert_redirected_to user_lab_url(UserLab.last)
  end

  test "should show user_lab" do
    get user_lab_url(@user_lab)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_lab_url(@user_lab)
    assert_response :success
  end

  test "should update user_lab" do
    patch user_lab_url(@user_lab), params: { user_lab: { class_grade: @user_lab.class_grade, lab_id: @user_lab.lab_id, report_grade: @user_lab.report_grade, user_id: @user_lab.user_id } }
    assert_redirected_to user_lab_url(@user_lab)
  end

  test "should destroy user_lab" do
    assert_difference('UserLab.count', -1) do
      delete user_lab_url(@user_lab)
    end

    assert_redirected_to user_labs_url
  end
end
