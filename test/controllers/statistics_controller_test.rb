require 'test_helper'

class StatisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statistic = statistics(:one)
  end

  test "should get index" do
    get statistics_url
    assert_response :success
  end

  test "should get new" do
    get new_statistic_url
    assert_response :success
  end

  test "should create statistic" do
    assert_difference('Statistic.count') do
      post statistics_url, params: { statistic: { daily_died: @statistic.daily_died, daily_infected: @statistic.daily_infected, daily_recovered: @statistic.daily_recovered, daily_test: @statistic.daily_test, date: @statistic.date, intensive_care: @statistic.intensive_care, intubated: @statistic.intubated, total_died: @statistic.total_died, total_infected: @statistic.total_infected, total_recovered: @statistic.total_recovered, total_test: @statistic.total_test } }
    end

    assert_redirected_to statistic_url(Statistic.last)
  end

  test "should show statistic" do
    get statistic_url(@statistic)
    assert_response :success
  end

  test "should get edit" do
    get edit_statistic_url(@statistic)
    assert_response :success
  end

  test "should update statistic" do
    patch statistic_url(@statistic), params: { statistic: { daily_died: @statistic.daily_died, daily_infected: @statistic.daily_infected, daily_recovered: @statistic.daily_recovered, daily_test: @statistic.daily_test, date: @statistic.date, intensive_care: @statistic.intensive_care, intubated: @statistic.intubated, total_died: @statistic.total_died, total_infected: @statistic.total_infected, total_recovered: @statistic.total_recovered, total_test: @statistic.total_test } }
    assert_redirected_to statistic_url(@statistic)
  end

  test "should destroy statistic" do
    assert_difference('Statistic.count', -1) do
      delete statistic_url(@statistic)
    end

    assert_redirected_to statistics_url
  end
end
