json.extract! meeting, :id, :topic, :date, :description, :type_of_session, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
