class RenameClientIdToCustomerId < ActiveRecord::Migration[5.1]
  def change
	  rename_column :rentals, :client_id, :customer_id
  end
end
