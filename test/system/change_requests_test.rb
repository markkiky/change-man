require "application_system_test_case"

class ChangeRequestsTest < ApplicationSystemTestCase
  setup do
    @change_request = change_requests(:one)
  end

  test "visiting the index" do
    visit change_requests_url
    assert_selector "h1", text: "Change Requests"
  end

  test "creating a Change request" do
    visit change_requests_url
    click_on "New Change Request"

    fill_in "Approval", with: @change_request.approval
    fill_in "Department", with: @change_request.department
    fill_in "Description", with: @change_request.description
    fill_in "Project", with: @change_request.project
    fill_in "Reason", with: @change_request.reason
    fill_in "Request no", with: @change_request.request_no
    fill_in "Requested by", with: @change_request.requested_by
    fill_in "Required date", with: @change_request.required_date
    fill_in "Sign off", with: @change_request.sign_off
    fill_in "Telephone", with: @change_request.telephone
    click_on "Create Change request"

    assert_text "Change request was successfully created"
    click_on "Back"
  end

  test "updating a Change request" do
    visit change_requests_url
    click_on "Edit", match: :first

    fill_in "Approval", with: @change_request.approval
    fill_in "Department", with: @change_request.department
    fill_in "Description", with: @change_request.description
    fill_in "Project", with: @change_request.project
    fill_in "Reason", with: @change_request.reason
    fill_in "Request no", with: @change_request.request_no
    fill_in "Requested by", with: @change_request.requested_by
    fill_in "Required date", with: @change_request.required_date
    fill_in "Sign off", with: @change_request.sign_off
    fill_in "Telephone", with: @change_request.telephone
    click_on "Update Change request"

    assert_text "Change request was successfully updated"
    click_on "Back"
  end

  test "destroying a Change request" do
    visit change_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change request was successfully destroyed"
  end
end
