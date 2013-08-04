class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.integer :employee_id
      t.integer :task_id
      t.float :time

      t.timestamps
    end
  end
end
