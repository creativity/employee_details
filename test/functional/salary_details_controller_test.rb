require 'test_helper'

class SalaryDetailsControllerTest < ActionController::TestCase
  setup do
    @salary_detail = salary_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salary_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salary_detail" do
    assert_difference('SalaryDetail.count') do
      post :create, salary_detail: { difference_to_pay: @salary_detail.difference_to_pay, salary_amount: @salary_detail.salary_amount, salary_deducted: @salary_detail.salary_deducted, total_salary: @salary_detail.total_salary, user_id: @salary_detail.user_id }
    end

    assert_redirected_to salary_detail_path(assigns(:salary_detail))
  end

  test "should show salary_detail" do
    get :show, id: @salary_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salary_detail
    assert_response :success
  end

  test "should update salary_detail" do
    put :update, id: @salary_detail, salary_detail: { difference_to_pay: @salary_detail.difference_to_pay, salary_amount: @salary_detail.salary_amount, salary_deducted: @salary_detail.salary_deducted, total_salary: @salary_detail.total_salary, user_id: @salary_detail.user_id }
    assert_redirected_to salary_detail_path(assigns(:salary_detail))
  end

  test "should destroy salary_detail" do
    assert_difference('SalaryDetail.count', -1) do
      delete :destroy, id: @salary_detail
    end

    assert_redirected_to salary_details_path
  end
end
