json.extract! log, :id, :user_id, :project_id, :tag_id, :created_at, :updated_at
json.url log_url(log, format: :json)
