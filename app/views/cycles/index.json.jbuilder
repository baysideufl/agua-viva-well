json.array!(@cycles) do |cycle|
  json.extract! cycle, :well_id, :start_time, :end_time, :average_pressure, :duration_unsafe
  json.url cycle_url(cycle, format: :json)
end