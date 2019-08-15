json.project_steps do
  json.array! @project.project_steps do |project_step|
    json.extract! project_step, :id, :title, :photo_url, :description, :project_id
  end
end
