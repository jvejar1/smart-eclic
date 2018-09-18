require 'test_helper'

class StudentSummariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_summaries_index_url
    assert_response :success
  end

  test "should get show" do
    get student_summaries_show_url
    assert_response :success
  end

end
