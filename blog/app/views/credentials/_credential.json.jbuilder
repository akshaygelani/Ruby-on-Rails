json.extract! credential, :id, :uid, :username, :password, :created_at, :updated_at
json.url credential_url(credential, format: :json)
