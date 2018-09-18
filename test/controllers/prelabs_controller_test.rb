require 'test_helper'

class PrelabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prelab = prelabs(:one)
  end

  test "should get index" do
    get prelabs_url
    assert_response :success
  end

  test "should get new" do
    get new_prelab_url
    assert_response :success
  end

  test "should create prelab" do
    assert_difference('Prelab.count') do
      post prelabs_url, params: { prelab: { activity_id: @prelab.activity_id, begin: @prelab.begin, end: @prelab.end, err_explanation: @prelab.err_explanation } }
    end

    assert_redirected_to prelab_url(Prelab.last)
  end

  test "should show prelab" do
    get prelab_url(@prelab)
    assert_response :success
  end

  test "should get edit" do
    get edit_prelab_url(@prelab)
    assert_response :success
  end

  test "should update prelab" do
    patch prelab_url(@prelab), params: { prelab: { activity_id: @prelab.activity_id, begin: @prelab.begin, end: @prelab.end, err_explanation: @prelab.err_explanation } }
    assert_redirected_to prelab_url(@prelab)
  end

  test "should destroy prelab" do
    assert_difference('Prelab.count', -1) do
      delete prelab_url(@prelab)
    end

    assert_redirected_to prelabs_url
  end
end
