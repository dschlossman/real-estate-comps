json.array!(@cmas) do |cma|
  json.extract! cma, :id, :name
  json.url cma_url(cma, format: :json)
end
