class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :billee_id
      t.float :total
      t.date :ordered
      t.date :billed
      t.date :paid

      t.timestamps
    end
  end
end
