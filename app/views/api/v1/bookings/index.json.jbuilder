json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :id, :user_id, :makerspace_id, :project_id, :name, :phone_number, :email, :number_students, :from_date, :to_date, :about_kids, :other_message, :created_at
    json.makerspace do 
      json.extract! booking.makerspace, :id, :name, :logo, :location, :address, :phone_number, :email, :description, :photo_url
    end
    json.project do
      json.extract! booking.project, :id, :name, :description, :level, :preparation_time, :photo_url, :video_url, :author, :tagline
    end
  end
end