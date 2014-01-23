json.array!(@wells) do |well|
  json.extract! well, :project_id, :longitude, :latitude, :name, :description, :pipe_diameter, :max_safe_pressure
  json.url well_url(well, format: :json)
end