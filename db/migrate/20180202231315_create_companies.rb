class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :city
      t.string :address
      t.string :areacode
      t.integer :phoneNumber

      t.timestamps
    end
  end
end
