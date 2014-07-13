json.array!(@comps) do |comp|
  json.extract! comp, :id, :name, :address, :date, :price
  json.url comp_url(comp, format: :json)
end
