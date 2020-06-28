require 'test_helper'

class ChangeImpactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_impact = change_impacts(:one)
  end

  test "should get index" do
    get change_impacts_url
    assert_response :success
  end

  test "should get new" do
    get new_change_impact_url
    assert_response :success
  end

  test "should create change_impact" do
    assert_difference('ChangeImpact.count') do
      post change_impacts_url, params: { change_impact: { environment_impacted: @change_impact.environment_impacted, impact: @change_impact.impact, priority: @change_impact.priority, resource_requirements: @change_impact.resource_requirements, roll_back: @change_impact.roll_back, test_plan: @change_impact.test_plan, type: @change_impact.type } }
    end

    assert_redirected_to change_impact_url(ChangeImpact.last)
  end

  test "should show change_impact" do
    get change_impact_url(@change_impact)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_impact_url(@change_impact)
    assert_response :success
  end

  test "should update change_impact" do
    patch change_impact_url(@change_impact), params: { change_impact: { environment_impacted: @change_impact.environment_impacted, impact: @change_impact.impact, priority: @change_impact.priority, resource_requirements: @change_impact.resource_requirements, roll_back: @change_impact.roll_back, test_plan: @change_impact.test_plan, type: @change_impact.type } }
    assert_redirected_to change_impact_url(@change_impact)
  end

  test "should destroy change_impact" do
    assert_difference('ChangeImpact.count', -1) do
      delete change_impact_url(@change_impact)
    end

    assert_redirected_to change_impacts_url
  end
end
