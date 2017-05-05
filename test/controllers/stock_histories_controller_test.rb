require 'test_helper'

class StockHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_history = stock_histories(:one)
  end

  test "should get index" do
    get stock_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_history_url
    assert_response :success
  end

  test "should create stock_history" do
    assert_difference('StockHistory.count') do
      post stock_histories_url, params: { stock_history: { ticker: @stock_history.ticker } }
    end

    assert_redirected_to stock_history_url(StockHistory.last)
  end

  test "should show stock_history" do
    get stock_history_url(@stock_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_history_url(@stock_history)
    assert_response :success
  end

  test "should update stock_history" do
    patch stock_history_url(@stock_history), params: { stock_history: { ticker: @stock_history.ticker } }
    assert_redirected_to stock_history_url(@stock_history)
  end

  test "should destroy stock_history" do
    assert_difference('StockHistory.count', -1) do
      delete stock_history_url(@stock_history)
    end

    assert_redirected_to stock_histories_url
  end
end
