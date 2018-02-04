class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :firstName
      t.string :lastName
      t.string :address
      t.string :email
      t.integer :phoneNumber
      t.string :company_id

      t.timestamps
    end
  end
end
