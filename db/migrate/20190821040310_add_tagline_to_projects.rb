class AddTaglineToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :tagline, :string
  end
end
