class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :level
      t.integer :preparation_time

      t.timestamps
    end
  end
end
