require 'test_helper'

class MatureInvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mature_investment = mature_investments(:one)
  end

  test "should get index" do
    get mature_investments_url
    assert_response :success
  end

  test "should get new" do
    get new_mature_investment_url
    assert_response :success
  end

  test "should create mature_investment" do
    assert_difference('MatureInvestment.count') do
      post mature_investments_url, params: { mature_investment: { simulation_id: @mature_investment.simulation_id } }
    end

    assert_redirected_to mature_investment_url(MatureInvestment.last)
  end

  test "should show mature_investment" do
    get mature_investment_url(@mature_investment)
    assert_response :success
  end

  test "should get edit" do
    get edit_mature_investment_url(@mature_investment)
    assert_response :success
  end

  test "should update mature_investment" do
    patch mature_investment_url(@mature_investment), params: { mature_investment: { simulation_id: @mature_investment.simulation_id } }
    assert_redirected_to mature_investment_url(@mature_investment)
  end

  test "should destroy mature_investment" do
    assert_difference('MatureInvestment.count', -1) do
      delete mature_investment_url(@mature_investment)
    end

    assert_redirected_to mature_investments_url
  end
end
