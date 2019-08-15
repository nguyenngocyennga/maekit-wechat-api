class RemoveMaterialFromProjectSteps < ActiveRecord::Migration[5.2]
  def change
    remove_reference :project_steps, :material, foreign_key: true
  end
end
