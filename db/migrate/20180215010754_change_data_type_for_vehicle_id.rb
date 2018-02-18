class ChangeDataTypeForVehicleId < ActiveRecord::Migration[5.1]
  def change
	  change_column :rentals, :vehicle_id, :integer
  end
end
