require "application_system_test_case"

class UserLabsTest < ApplicationSystemTestCase
  setup do
    @user_lab = user_labs(:one)
  end

  test "visiting the index" do
    visit user_labs_url
    assert_selector "h1", text: "User Labs"
  end

  test "creating a User lab" do
    visit user_labs_url
    click_on "New User Lab"

    fill_in "Class Grade", with: @user_lab.class_grade
    fill_in "Lab", with: @user_lab.lab_id
    fill_in "Report Grade", with: @user_lab.report_grade
    fill_in "User", with: @user_lab.user_id
    click_on "Create User lab"

    assert_text "User lab was successfully created"
    click_on "Back"
  end

  test "updating a User lab" do
    visit user_labs_url
    click_on "Edit", match: :first

    fill_in "Class Grade", with: @user_lab.class_grade
    fill_in "Lab", with: @user_lab.lab_id
    fill_in "Report Grade", with: @user_lab.report_grade
    fill_in "User", with: @user_lab.user_id
    click_on "Update User lab"

    assert_text "User lab was successfully updated"
    click_on "Back"
  end

  test "destroying a User lab" do
    visit user_labs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User lab was successfully destroyed"
  end
end
