class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :f_name
      t.string :l_name
      t.string :phone1
      t.string :phone2
      t.string :email
      t.integer :location_id
      t.string :photo

      t.timestamps
    end
  end
end
