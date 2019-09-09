json.equipments do
  json.array! @equipments do |equipment|
    json.extract! equipment, :id, :name, :scan, :description, :photo_url, :video_url, :author
  end
end