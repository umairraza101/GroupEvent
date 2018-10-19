json.extract! group_event, :id,
              :name,
              :description,
              :location,
              :state,
              :created_at,
              :updated_at,
              :start_date,
              :end_date
json.url group_event_url(group_event, format: :json)
