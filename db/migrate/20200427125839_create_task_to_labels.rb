class CreateTaskToLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :task_to_labels do |t|
      t.references :task, foreign_key: true
      t.references :label, foreign_key: true

      t.timestamps
    end
  end
end
