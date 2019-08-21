json.booking do
  json.extract! @booking, :id, :user_id, :makerspace_id, :project_id, :name, :phone_number, :email, :number_students, :from_date, :to_date, :about_kids, :other_message, :created_at
end