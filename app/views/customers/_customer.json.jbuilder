json.extract! customer, :id, :firstName, :lastName, :address, :email, :phoneNumber, :gender, :dob, :password, :company_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
