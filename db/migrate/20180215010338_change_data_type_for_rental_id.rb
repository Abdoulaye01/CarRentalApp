class ChangeDataTypeForRentalId < ActiveRecord::Migration[5.1]
  def change
	  change_column :reviews, :rental_id, :integer
  end
end
