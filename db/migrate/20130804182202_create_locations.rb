class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :number
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :photo

      t.timestamps
    end
  end
end
