json.array!(@accounts) do |account|
  json.extract! account, :id, :number, :priority, :name, :owner, :collector, :shard, :beacon, :created, :expiration
  json.url account_url(account, format: :json)
end
