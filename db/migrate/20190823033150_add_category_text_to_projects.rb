class AddCategoryTextToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :category_text, :string
  end
end
