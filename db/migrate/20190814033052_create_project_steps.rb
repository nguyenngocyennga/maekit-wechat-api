class CreateProjectSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :project_steps do |t|
      t.string :photo_url
      t.text :description
      t.references :equipment, foreign_key: true
      t.references :project, foreign_key: true
      t.references :material, foreign_key: true
      t.string :quantity

      t.timestamps
    end
  end
end
