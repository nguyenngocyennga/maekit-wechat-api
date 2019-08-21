require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end
  
  test "should get index" do
    get bookings_url, as: :json
    assert_response :success
  end
  
  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { about_kids: @booking.about_kids, email: @booking.email, from_date: @booking.from_date, makerspace_id: @booking.makerspace_id, name: @booking.name, number_students: @booking.number_students, other_message: @booking.other_message, phone_number: @booking.phone_number, project_id: @booking.project_id, to_date: @booking.to_date, user_id: @booking.user_id } }, as: :json
    end
    
    assert_response 201
  end
  
  test "should show booking" do
    get @booking, as: :json
    assert_response :success
  end
  
  test "should update booking" do
    patch @booking, params: { booking: { about_kids: @booking.about_kids, email: @booking.email, from_date: @booking.from_date, makerspace_id: @booking.makerspace_id, name: @booking.name, number_students: @booking.number_students, other_message: @booking.other_message, phone_number: @booking.phone_number, project_id: @booking.project_id, to_date: @booking.to_date, user_id: @booking.user_id } }, as: :json
    assert_response 200
  end
  
  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete @booking, as: :json
    end
    
    assert_response 204
  end
end
