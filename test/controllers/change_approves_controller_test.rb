require 'test_helper'

class ChangeApprovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_approve = change_approves(:one)
  end

  test "should get index" do
    get change_approves_url
    assert_response :success
  end

  test "should get new" do
    get new_change_approve_url
    assert_response :success
  end

  test "should create change_approve" do
    assert_difference('ChangeApprove.count') do
      post change_approves_url, params: { change_approve: { assigned_to: @change_approve.assigned_to, comments: @change_approve.comments, scheduled_date: @change_approve.scheduled_date, sign_off: @change_approve.sign_off, status: @change_approve.status } }
    end

    assert_redirected_to change_approve_url(ChangeApprove.last)
  end

  test "should show change_approve" do
    get change_approve_url(@change_approve)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_approve_url(@change_approve)
    assert_response :success
  end

  test "should update change_approve" do
    patch change_approve_url(@change_approve), params: { change_approve: { assigned_to: @change_approve.assigned_to, comments: @change_approve.comments, scheduled_date: @change_approve.scheduled_date, sign_off: @change_approve.sign_off, status: @change_approve.status } }
    assert_redirected_to change_approve_url(@change_approve)
  end

  test "should destroy change_approve" do
    assert_difference('ChangeApprove.count', -1) do
      delete change_approve_url(@change_approve)
    end

    assert_redirected_to change_approves_url
  end
end
