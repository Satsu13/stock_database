require 'test_helper'

class DesignAxisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @design_axi = design_axis(:one)
  end

  test "should get index" do
    get design_axis_url
    assert_response :success
  end

  test "should get new" do
    get new_design_axi_url
    assert_response :success
  end

  test "should create design_axi" do
    assert_difference('DesignAxi.count') do
      post design_axis_url, params: { design_axi: { name: @design_axi.name, parameter_id: @design_axi.parameter_id, version_id: @design_axi.version_id } }
    end

    assert_redirected_to design_axi_url(DesignAxi.last)
  end

  test "should show design_axi" do
    get design_axi_url(@design_axi)
    assert_response :success
  end

  test "should get edit" do
    get edit_design_axi_url(@design_axi)
    assert_response :success
  end

  test "should update design_axi" do
    patch design_axi_url(@design_axi), params: { design_axi: { name: @design_axi.name, parameter_id: @design_axi.parameter_id, version_id: @design_axi.version_id } }
    assert_redirected_to design_axi_url(@design_axi)
  end

  test "should destroy design_axi" do
    assert_difference('DesignAxi.count', -1) do
      delete design_axi_url(@design_axi)
    end

    assert_redirected_to design_axis_url
  end
end
