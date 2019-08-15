json.projects do
  json.array! @projects do |project|
    json.extract! project, :id, :name, :description, :level, :preparation_time, :photo_url
    json.project_steps do
      json.array! project.project_steps do |project_step|
        json.extract! project_step, :id, :title, :photo_url, :description, :project_id
      end
    end
  end
end