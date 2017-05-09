require 'test_helper'

class StockDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_day = stock_days(:one)
  end

  test "should get index" do
    get stock_days_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_day_url
    assert_response :success
  end

  test "should create stock_day" do
    assert_difference('StockDay.count') do
      post stock_days_url, params: { stock_day: { date: @stock_day.date, stock_history_id: @stock_day.stock_history_id, value: @stock_day.value } }
    end

    assert_redirected_to stock_day_url(StockDay.last)
  end

  test "should show stock_day" do
    get stock_day_url(@stock_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_day_url(@stock_day)
    assert_response :success
  end

  test "should update stock_day" do
    patch stock_day_url(@stock_day), params: { stock_day: { date: @stock_day.date, stock_history_id: @stock_day.stock_history_id, value: @stock_day.value } }
    assert_redirected_to stock_day_url(@stock_day)
  end

  test "should destroy stock_day" do
    assert_difference('StockDay.count', -1) do
      delete stock_day_url(@stock_day)
    end

    assert_redirected_to stock_days_url
  end
end
