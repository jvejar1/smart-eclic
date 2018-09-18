require 'test_helper'

class StudentActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get student_activities_show_url
    assert_response :success
  end

  test "should get index" do
    get student_activities_index_url
    assert_response :success
  end

end
