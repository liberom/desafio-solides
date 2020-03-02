json.extract! event, :id, :duration, :date, :description, :log_id, :created_at, :updated_at
json.url event_url(event, format: :json)
