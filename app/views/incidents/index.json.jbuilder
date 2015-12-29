json.array!(@incidents) do |incident|
  json.extract! incident, :id, :component, :collector, :shard, :beacon, :description, :message, :impact, :severity
  json.url incident_url(incident, format: :json)
end
