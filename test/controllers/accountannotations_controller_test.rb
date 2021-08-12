require "test_helper"

class AccountannotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accountannotation = accountannotations(:one)
  end

  test "should get index" do
    get accountannotations_url
    assert_response :success
  end

  test "should get new" do
    get new_accountannotation_url
    assert_response :success
  end

  test "should create accountannotation" do
    assert_difference('Accountannotation.count') do
      post accountannotations_url, params: { accountannotation: { account_id: @accountannotation.account_id, annotation_id: @accountannotation.annotation_id } }
    end

    assert_redirected_to accountannotation_url(Accountannotation.last)
  end

  test "should show accountannotation" do
    get accountannotation_url(@accountannotation)
    assert_response :success
  end

  test "should get edit" do
    get edit_accountannotation_url(@accountannotation)
    assert_response :success
  end

  test "should update accountannotation" do
    patch accountannotation_url(@accountannotation), params: { accountannotation: { account_id: @accountannotation.account_id, annotation_id: @accountannotation.annotation_id } }
    assert_redirected_to accountannotation_url(@accountannotation)
  end

  test "should destroy accountannotation" do
    assert_difference('Accountannotation.count', -1) do
      delete accountannotation_url(@accountannotation)
    end

    assert_redirected_to accountannotations_url
  end
end
