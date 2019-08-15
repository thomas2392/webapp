require 'test_helper'

class AllotmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allotment = allotments(:one)
  end

  test "should get index" do
    get allotments_url
    assert_response :success
  end

  test "should get new" do
    get new_allotment_url
    assert_response :success
  end

  test "should create allotment" do
    assert_difference('Allotment.count') do
      post allotments_url, params: { allotment: { name: @allotment.name, number: @allotment.number, value: @allotment.value, venture_id: @allotment.venture_id } }
    end

    assert_redirected_to allotment_url(Allotment.last)
  end

  test "should show allotment" do
    get allotment_url(@allotment)
    assert_response :success
  end

  test "should get edit" do
    get edit_allotment_url(@allotment)
    assert_response :success
  end

  test "should update allotment" do
    patch allotment_url(@allotment), params: { allotment: { name: @allotment.name, number: @allotment.number, value: @allotment.value, venture_id: @allotment.venture_id } }
    assert_redirected_to allotment_url(@allotment)
  end

  test "should destroy allotment" do
    assert_difference('Allotment.count', -1) do
      delete allotment_url(@allotment)
    end

    assert_redirected_to allotments_url
  end
end
