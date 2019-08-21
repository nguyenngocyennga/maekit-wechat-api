class AddMaterialsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :materials, :text
  end
end
