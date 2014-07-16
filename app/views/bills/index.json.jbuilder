json.array!(@bills) do |bill|
  json.extract! bill, :id, :store, :bought_on, :user_id, :total
  json.url bill_url(bill, format: :json)
end
