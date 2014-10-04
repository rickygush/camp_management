json.array!(@camps) do |camp|
  json.extract! camp, :id, :name, :theme, :start_date, :end_date, :speaker
  json.url camp_url(camp, format: :json)
end
