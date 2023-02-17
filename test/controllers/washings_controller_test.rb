require "test_helper"

class WashingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @washing = washings(:one)
  end

  test "should get index" do
    get washings_url
    assert_response :success
  end

  test "should get new" do
    get new_washing_url
    assert_response :success
  end

  test "should create washing" do
    assert_difference("Washing.count") do
      post washings_url, params: { washing: { brew_id: @washing.brew_id, checking_id: @washing.checking_id, end_date: @washing.end_date, end_time: @washing.end_time, equipment_id: @washing.equipment_id, glass_checking_id: @washing.glass_checking_id, start_date: @washing.start_date, start_time: @washing.start_time, washer_id: @washing.washer_id } }
    end

    assert_redirected_to washing_url(Washing.last)
  end

  test "should show washing" do
    get washing_url(@washing)
    assert_response :success
  end

  test "should get edit" do
    get edit_washing_url(@washing)
    assert_response :success
  end

  test "should update washing" do
    patch washing_url(@washing), params: { washing: { brew_id: @washing.brew_id, checking_id: @washing.checking_id, end_date: @washing.end_date, end_time: @washing.end_time, equipment_id: @washing.equipment_id, glass_checking_id: @washing.glass_checking_id, start_date: @washing.start_date, start_time: @washing.start_time, washer_id: @washing.washer_id } }
    assert_redirected_to washing_url(@washing)
  end

  test "should destroy washing" do
    assert_difference("Washing.count", -1) do
      delete washing_url(@washing)
    end

    assert_redirected_to washings_url
  end
end
