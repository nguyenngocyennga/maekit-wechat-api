class AddInstructionsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :instructions, :text
  end
end
