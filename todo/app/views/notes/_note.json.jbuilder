json.extract! note, :id, :uid, :name, :description, :status, :created_at, :updated_at
json.url note_url(note, format: :json)
