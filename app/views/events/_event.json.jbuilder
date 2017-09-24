json.extract! event, :id, :name, :comment, :day, :allday, :start, :end, :created_at, :updated_at
json.url event_url(event, format: :json)
