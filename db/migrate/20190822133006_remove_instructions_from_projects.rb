class RemoveInstructionsFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :instructions, :text
  end
end
