require "application_system_test_case"

class ChangeImpactsTest < ApplicationSystemTestCase
  setup do
    @change_impact = change_impacts(:one)
  end

  test "visiting the index" do
    visit change_impacts_url
    assert_selector "h1", text: "Change Impacts"
  end

  test "creating a Change impact" do
    visit change_impacts_url
    click_on "New Change Impact"

    fill_in "Environment impacted", with: @change_impact.environment_impacted
    fill_in "Impact", with: @change_impact.impact
    fill_in "Priority", with: @change_impact.priority
    fill_in "Resource requirements", with: @change_impact.resource_requirements
    fill_in "Roll back", with: @change_impact.roll_back
    fill_in "Test plan", with: @change_impact.test_plan
    fill_in "Type", with: @change_impact.type
    click_on "Create Change impact"

    assert_text "Change impact was successfully created"
    click_on "Back"
  end

  test "updating a Change impact" do
    visit change_impacts_url
    click_on "Edit", match: :first

    fill_in "Environment impacted", with: @change_impact.environment_impacted
    fill_in "Impact", with: @change_impact.impact
    fill_in "Priority", with: @change_impact.priority
    fill_in "Resource requirements", with: @change_impact.resource_requirements
    fill_in "Roll back", with: @change_impact.roll_back
    fill_in "Test plan", with: @change_impact.test_plan
    fill_in "Type", with: @change_impact.type
    click_on "Update Change impact"

    assert_text "Change impact was successfully updated"
    click_on "Back"
  end

  test "destroying a Change impact" do
    visit change_impacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change impact was successfully destroyed"
  end
end
