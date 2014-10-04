json.array!(@incidents) do |incident|
  json.extract! incident, :id, :attendee_id, :camp_id, :incident
  json.url incident_url(incident, format: :json)
end
