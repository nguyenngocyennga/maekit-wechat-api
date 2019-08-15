class AddTitleToProjectSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :project_steps, :title, :string
  end
end
