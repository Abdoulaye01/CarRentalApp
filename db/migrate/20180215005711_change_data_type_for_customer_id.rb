class ChangeDataTypeForCustomerId < ActiveRecord::Migration[5.1]
  def change
	  change_column :rentals, :customer_id, :integer
	  change_column :reviews, :customer_id, :integer
	  
  end
end
