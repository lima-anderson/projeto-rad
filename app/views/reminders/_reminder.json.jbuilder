json.extract! reminder, :id, :titulo, :descricao, :data, :hora, :prioridade, :status, :tag_id, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
