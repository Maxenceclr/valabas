require "test_helper"

class DestinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @destination = destinations(:one)
  end

  test "should get index" do
    get destinations_url
    assert_response :success
  end

  test "should get new" do
    get new_destination_url
    assert_response :success
  end

  test "should Créer la destination" do
    assert_difference("Destination.count") do
      post destinations_url, params: { destination: { date: @destination.date, latitude: @destination.latitude, longitude: @destination.longitude, message: @destination.message, pseudo: @destination.pseudo } }
    end

    assert_redirected_to destination_url(Destination.last)
  end

  test "should show destination" do
    get destination_url(@destination)
    assert_response :success
  end

  test "should get edit" do
    get edit_destination_url(@destination)
    assert_response :success
  end

  test "should update destination" do
    patch destination_url(@destination), params: { destination: { date: @destination.date, latitude: @destination.latitude, longitude: @destination.longitude, message: @destination.message, pseudo: @destination.pseudo } }
    assert_redirected_to destination_url(@destination)
  end

  test "should destroy destination" do
    assert_difference("Destination.count", -1) do
      delete destination_url(@destination)
    end

    assert_redirected_to destinations_url
  end
end
