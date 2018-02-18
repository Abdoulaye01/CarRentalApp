json.extract! rental, :id, :pickUpDateTime, :returnDateTime, :odemeterBefore, :odemeterAfter, :gasTankBefore, :gasTankAfter, :client_id, :vehicle_id, :created_at, :updated_at
json.url rental_url(rental, format: :json)
