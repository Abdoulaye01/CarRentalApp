class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :regNumber
      t.string :vehicleType
      t.integer :engineSize
      t.string :fuelType
      t.string :colour
      t.decimal :price
      t.string :company_id

      t.timestamps
    end
  end
end
