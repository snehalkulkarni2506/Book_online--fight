require "test_helper"

class PassangersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @passanger = passangers(:one)
  end

  test "should get index" do
    get passangers_url
    assert_response :success
  end

  test "should get new" do
    get new_passanger_url
    assert_response :success
  end

  test "should create passanger" do
    assert_difference('Passanger.count') do
      post passangers_url, params: { passanger: { From_To: @passanger.From_To, age: @passanger.age, contact: @passanger.contact, email_id: @passanger.email_id, name: @passanger.name, timing: @passanger.timing } }
    end

    assert_redirected_to passanger_url(Passanger.last)
  end

  test "should show passanger" do
    get passanger_url(@passanger)
    assert_response :success
  end

  test "should get edit" do
    get edit_passanger_url(@passanger)
    assert_response :success
  end

  test "should update passanger" do
    patch passanger_url(@passanger), params: { passanger: { From_To: @passanger.From_To, age: @passanger.age, contact: @passanger.contact, email_id: @passanger.email_id, name: @passanger.name, timing: @passanger.timing } }
    assert_redirected_to passanger_url(@passanger)
  end

  test "should destroy passanger" do
    assert_difference('Passanger.count', -1) do
      delete passanger_url(@passanger)
    end

    assert_redirected_to passangers_url
  end
end
