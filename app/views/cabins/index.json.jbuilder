json.array!(@cabins) do |cabin|
  json.extract! cabin, :id, :name, :beds
  json.url cabin_url(cabin, format: :json)
end
