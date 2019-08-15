class RemoveEquipmentFromProjectSteps < ActiveRecord::Migration[5.2]
  def change
    remove_reference :project_steps, :equipment, foreign_key: true
  end
end
