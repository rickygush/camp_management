json.array!(@attendees) do |attendee|
  json.extract! attendee, :id, :address, :allergies, :church, :diet_requirements, :dob, :e_email, :e_h_phone, :e_m_phone, :e_name, :e_relationship, :e_w_phone, :f_name, :g_email, :g_h_phone, :g_m_phone, :g_name, :g_w_phone, :gender, :l_name, :medication, :notes, :panadol, :role, :school
  json.url attendee_url(attendee, format: :json)
end
