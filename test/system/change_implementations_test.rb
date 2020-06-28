require "application_system_test_case"

class ChangeImplementationsTest < ApplicationSystemTestCase
  setup do
    @change_implementation = change_implementations(:one)
  end

  test "visiting the index" do
    visit change_implementations_url
    assert_selector "h1", text: "Change Implementations"
  end

  test "creating a Change implementation" do
    visit change_implementations_url
    click_on "New Change Implementation"

    fill_in "Implementation date", with: @change_implementation.implementation_date
    fill_in "Implementation results", with: @change_implementation.implementation_results
    fill_in "Sign off", with: @change_implementation.sign_off
    fill_in "Staging results", with: @change_implementation.staging_results
    click_on "Create Change implementation"

    assert_text "Change implementation was successfully created"
    click_on "Back"
  end

  test "updating a Change implementation" do
    visit change_implementations_url
    click_on "Edit", match: :first

    fill_in "Implementation date", with: @change_implementation.implementation_date
    fill_in "Implementation results", with: @change_implementation.implementation_results
    fill_in "Sign off", with: @change_implementation.sign_off
    fill_in "Staging results", with: @change_implementation.staging_results
    click_on "Update Change implementation"

    assert_text "Change implementation was successfully updated"
    click_on "Back"
  end

  test "destroying a Change implementation" do
    visit change_implementations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change implementation was successfully destroyed"
  end
end
