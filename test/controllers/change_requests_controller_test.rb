require 'test_helper'

class ChangeRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_request = change_requests(:one)
  end

  test "should get index" do
    get change_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_change_request_url
    assert_response :success
  end

  test "should create change_request" do
    assert_difference('ChangeRequest.count') do
      post change_requests_url, params: { change_request: { approval: @change_request.approval, department: @change_request.department, description: @change_request.description, project: @change_request.project, reason: @change_request.reason, request_no: @change_request.request_no, requested_by: @change_request.requested_by, required_date: @change_request.required_date, sign_off: @change_request.sign_off, telephone: @change_request.telephone } }
    end

    assert_redirected_to change_request_url(ChangeRequest.last)
  end

  test "should show change_request" do
    get change_request_url(@change_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_request_url(@change_request)
    assert_response :success
  end

  test "should update change_request" do
    patch change_request_url(@change_request), params: { change_request: { approval: @change_request.approval, department: @change_request.department, description: @change_request.description, project: @change_request.project, reason: @change_request.reason, request_no: @change_request.request_no, requested_by: @change_request.requested_by, required_date: @change_request.required_date, sign_off: @change_request.sign_off, telephone: @change_request.telephone } }
    assert_redirected_to change_request_url(@change_request)
  end

  test "should destroy change_request" do
    assert_difference('ChangeRequest.count', -1) do
      delete change_request_url(@change_request)
    end

    assert_redirected_to change_requests_url
  end
end
