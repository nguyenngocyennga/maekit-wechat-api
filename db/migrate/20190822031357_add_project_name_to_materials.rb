class AddProjectNameToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :project_name, :string
  end
end
