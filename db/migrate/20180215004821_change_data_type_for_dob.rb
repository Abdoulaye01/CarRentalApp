class ChangeDataTypeForDob < ActiveRecord::Migration[5.1]
  def change
	  change_column :customers, :dob, :date
  end
end
