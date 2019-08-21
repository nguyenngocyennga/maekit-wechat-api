json.makerspaces do
  json.array! @makerspaces do |makerspace|
    json.extract! makerspace, :id, :name, :logo, :location, :address, :phone_number, :email, :description, :photo_url, :longtitude, :latitude
  end
end