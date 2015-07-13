json.array!(@weddings) do |wedding|
  json.extract! wedding, :id, :name, :date, :location, :guests, :user_id
  json.url wedding_url(wedding, format: :json)
end
