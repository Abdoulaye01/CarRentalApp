class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :customer_id
      t.string :rental_id
      t.integer :stars

      t.timestamps
    end
  end
end
