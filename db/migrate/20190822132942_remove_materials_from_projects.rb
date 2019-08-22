class RemoveMaterialsFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :materials, :text
  end
end
