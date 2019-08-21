class ChangePreparatationTimeToBeStringInProjects < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :preparation_time, :string
  end
end
