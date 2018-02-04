json.extract! vehicle, :id, :regNumber, :vehicleType, :engineSize, :fuelType, :colour, :company_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
