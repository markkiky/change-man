require 'test_helper'

class ChangeImplementationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_implementation = change_implementations(:one)
  end

  test "should get index" do
    get change_implementations_url
    assert_response :success
  end

  test "should get new" do
    get new_change_implementation_url
    assert_response :success
  end

  test "should create change_implementation" do
    assert_difference('ChangeImplementation.count') do
      post change_implementations_url, params: { change_implementation: { implementation_date: @change_implementation.implementation_date, implementation_results: @change_implementation.implementation_results, sign_off: @change_implementation.sign_off, staging_results: @change_implementation.staging_results } }
    end

    assert_redirected_to change_implementation_url(ChangeImplementation.last)
  end

  test "should show change_implementation" do
    get change_implementation_url(@change_implementation)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_implementation_url(@change_implementation)
    assert_response :success
  end

  test "should update change_implementation" do
    patch change_implementation_url(@change_implementation), params: { change_implementation: { implementation_date: @change_implementation.implementation_date, implementation_results: @change_implementation.implementation_results, sign_off: @change_implementation.sign_off, staging_results: @change_implementation.staging_results } }
    assert_redirected_to change_implementation_url(@change_implementation)
  end

  test "should destroy change_implementation" do
    assert_difference('ChangeImplementation.count', -1) do
      delete change_implementation_url(@change_implementation)
    end

    assert_redirected_to change_implementations_url
  end
end
