require 'test_helper'

class GlobalUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @global_user = global_users(:one)
  end

  test "should get index" do
    get global_users_url
    assert_response :success
  end

  test "should get new" do
    get new_global_user_url
    assert_response :success
  end

  test "should create global_user" do
    assert_difference('GlobalUser.count') do
      post global_users_url, params: { global_user: { dept_manager: @global_user.dept_manager, dispatch: @global_user.dispatch, holiday_bird_caps: @global_user.holiday_bird_caps, manager: @global_user.manager, manager_id: @global_user.manager_id, master_user: @global_user.master_user, order_input: @global_user.order_input, pricing: @global_user.pricing, prospects: @global_user.prospects, rapid_order: @global_user.rapid_order, refusals: @global_user.refusals, short_term_trucks: @global_user.short_term_trucks, take_in: @global_user.take_in, temp_hire: @global_user.temp_hire, truck_monitoring: @global_user.truck_monitoring, user_dept: @global_user.user_dept } }
    end

    assert_redirected_to global_user_url(GlobalUser.last)
  end

  test "should show global_user" do
    get global_user_url(@global_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_global_user_url(@global_user)
    assert_response :success
  end

  test "should update global_user" do
    patch global_user_url(@global_user), params: { global_user: { dept_manager: @global_user.dept_manager, dispatch: @global_user.dispatch, holiday_bird_caps: @global_user.holiday_bird_caps, manager: @global_user.manager, manager_id: @global_user.manager_id, master_user: @global_user.master_user, order_input: @global_user.order_input, pricing: @global_user.pricing, prospects: @global_user.prospects, rapid_order: @global_user.rapid_order, refusals: @global_user.refusals, short_term_trucks: @global_user.short_term_trucks, take_in: @global_user.take_in, temp_hire: @global_user.temp_hire, truck_monitoring: @global_user.truck_monitoring, user_dept: @global_user.user_dept } }
    assert_redirected_to global_user_url(@global_user)
  end

  test "should destroy global_user" do
    assert_difference('GlobalUser.count', -1) do
      delete global_user_url(@global_user)
    end

    assert_redirected_to global_users_url
  end
end
