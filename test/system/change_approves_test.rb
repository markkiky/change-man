require "application_system_test_case"

class ChangeApprovesTest < ApplicationSystemTestCase
  setup do
    @change_approve = change_approves(:one)
  end

  test "visiting the index" do
    visit change_approves_url
    assert_selector "h1", text: "Change Approves"
  end

  test "creating a Change approve" do
    visit change_approves_url
    click_on "New Change Approve"

    fill_in "Assigned to", with: @change_approve.assigned_to
    fill_in "Comments", with: @change_approve.comments
    fill_in "Scheduled date", with: @change_approve.scheduled_date
    fill_in "Sign off", with: @change_approve.sign_off
    fill_in "Status", with: @change_approve.status
    click_on "Create Change approve"

    assert_text "Change approve was successfully created"
    click_on "Back"
  end

  test "updating a Change approve" do
    visit change_approves_url
    click_on "Edit", match: :first

    fill_in "Assigned to", with: @change_approve.assigned_to
    fill_in "Comments", with: @change_approve.comments
    fill_in "Scheduled date", with: @change_approve.scheduled_date
    fill_in "Sign off", with: @change_approve.sign_off
    fill_in "Status", with: @change_approve.status
    click_on "Update Change approve"

    assert_text "Change approve was successfully updated"
    click_on "Back"
  end

  test "destroying a Change approve" do
    visit change_approves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change approve was successfully destroyed"
  end
end
