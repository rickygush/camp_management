json.array!(@responses) do |response|
  json.extract! response, :id, :attendee_id, :camp_id, :response
  json.url response_url(response, format: :json)
end
