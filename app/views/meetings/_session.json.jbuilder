json.extract! session, :id, :topic, :date, :description, :created_at, :updated_at
json.url session_url(session, format: :json)
