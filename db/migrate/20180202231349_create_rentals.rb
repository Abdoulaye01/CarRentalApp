class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.datetime :pickUpDateTime
      t.datetime :returnDateTime
      t.integer :odemeterBefore
      t.integer :odemeterAfter
      t.integer :gasTankBefore
      t.integer :gasTankAfter
      t.string :customer_id
      t.string :vehicle_id

      t.timestamps
    end
  end
end
