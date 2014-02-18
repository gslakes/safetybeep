json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :details, :alert_time, :reminder_time
  json.url event_url(event, format: :json)
end
