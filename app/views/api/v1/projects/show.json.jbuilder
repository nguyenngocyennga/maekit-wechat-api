json.project do
  json.extract! @project, :id, :name, :description, :level, :preparation_time, :photo_url, :video_url, :materials, :instructions, :author, :tagline
  json.project_steps do
    json.array! @project.project_steps do |project_step|
      json.extract! project_step, :id, :title, :photo_url, :description, :project_id
    end
  end
  json.materials do
    json.array! @project.materials do |material|
      json.extract! material, :id, :name
    end
  end
end
