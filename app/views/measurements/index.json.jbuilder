json.array!(@measurements) do |measurement|
  json.extract! measurement, :well_id, :time, :pressure
  json.url measurement_url(measurement, format: :json)
end