require "application_system_test_case"

class StatisticsTest < ApplicationSystemTestCase
  setup do
    @statistic = statistics(:one)
  end

  test "visiting the index" do
    visit statistics_url
    assert_selector "h1", text: "Statistics"
  end

  test "creating a Statistic" do
    visit statistics_url
    click_on "New Statistic"

    fill_in "Daily died", with: @statistic.daily_died
    fill_in "Daily infected", with: @statistic.daily_infected
    fill_in "Daily recovered", with: @statistic.daily_recovered
    fill_in "Daily test", with: @statistic.daily_test
    fill_in "Date", with: @statistic.date
    fill_in "Intensive care", with: @statistic.intensive_care
    fill_in "Intubated", with: @statistic.intubated
    fill_in "Total died", with: @statistic.total_died
    fill_in "Total infected", with: @statistic.total_infected
    fill_in "Total recovered", with: @statistic.total_recovered
    fill_in "Total test", with: @statistic.total_test
    click_on "Create Statistic"

    assert_text "Statistic was successfully created"
    click_on "Back"
  end

  test "updating a Statistic" do
    visit statistics_url
    click_on "Edit", match: :first

    fill_in "Daily died", with: @statistic.daily_died
    fill_in "Daily infected", with: @statistic.daily_infected
    fill_in "Daily recovered", with: @statistic.daily_recovered
    fill_in "Daily test", with: @statistic.daily_test
    fill_in "Date", with: @statistic.date
    fill_in "Intensive care", with: @statistic.intensive_care
    fill_in "Intubated", with: @statistic.intubated
    fill_in "Total died", with: @statistic.total_died
    fill_in "Total infected", with: @statistic.total_infected
    fill_in "Total recovered", with: @statistic.total_recovered
    fill_in "Total test", with: @statistic.total_test
    click_on "Update Statistic"

    assert_text "Statistic was successfully updated"
    click_on "Back"
  end

  test "destroying a Statistic" do
    visit statistics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Statistic was successfully destroyed"
  end
end
