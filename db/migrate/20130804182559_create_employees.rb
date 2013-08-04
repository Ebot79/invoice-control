class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :f_name
      t.string :l_name
      t.float :rate
      t.integer :location_id
      t.string :photo

      t.timestamps
    end
  end
end
