require 'test_helper'

class PremiamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premiam = premiams(:one)
  end

  test "should get index" do
    get premiams_url
    assert_response :success
  end

  test "should get new" do
    get new_premiam_url
    assert_response :success
  end

  test "should create premiam" do
    assert_difference('Premiam.count') do
      post premiams_url, params: { premiam: { age: @premiam.age, company: @premiam.company, fee: @premiam.fee, name: @premiam.name, plan: @premiam.plan, sex: @premiam.sex } }
    end

    assert_redirected_to premiam_url(Premiam.last)
  end

  test "should show premiam" do
    get premiam_url(@premiam)
    assert_response :success
  end

  test "should get edit" do
    get edit_premiam_url(@premiam)
    assert_response :success
  end

  test "should update premiam" do
    patch premiam_url(@premiam), params: { premiam: { age: @premiam.age, company: @premiam.company, fee: @premiam.fee, name: @premiam.name, plan: @premiam.plan, sex: @premiam.sex } }
    assert_redirected_to premiam_url(@premiam)
  end

  test "should destroy premiam" do
    assert_difference('Premiam.count', -1) do
      delete premiam_url(@premiam)
    end

    assert_redirected_to premiams_url
  end
end
