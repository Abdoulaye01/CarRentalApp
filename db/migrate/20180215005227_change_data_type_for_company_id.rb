class ChangeDataTypeForCompanyId < ActiveRecord::Migration[5.1]
  def change
	  change_column :customers, :company_id, :integer
	  change_column :vehicles,  :company_id, :integer
  end
end
