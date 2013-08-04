class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :bill_id
      t.integer :location_id
      t.string :status
      t.date :start
      t.float :labor
      t.float :materials
      t.text :description

      t.timestamps
    end
  end
end
