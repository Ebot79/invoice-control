class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :source
      t.float :amount
      t.float :less
      t.float :total
      t.integer :task_id

      t.timestamps
    end
  end
end
