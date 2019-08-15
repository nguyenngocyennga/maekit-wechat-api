json.equipments do
  json.array! @equipments do |equipment|
    json.extract! equipment, :id, :name, :description, :photo_url
  end
end