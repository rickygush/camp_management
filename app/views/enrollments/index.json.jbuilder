json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :attendee_id, :camp_id, :cabin_id, :payment_method, :charge, :paid, :pick_up, :notes
  json.url enrollment_url(enrollment, format: :json)
end
