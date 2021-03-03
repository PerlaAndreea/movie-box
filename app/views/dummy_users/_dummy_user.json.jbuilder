json.extract! dummy_user, :id, :email, :password, :created_at, :updated_at
json.url dummy_user_url(dummy_user, format: :json)
