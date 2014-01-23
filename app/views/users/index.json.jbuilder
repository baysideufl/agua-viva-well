json.array!(@users) do |user|
  json.extract! user, :username, :email, :phone, :carrier, :password_digest
  json.url user_url(user, format: :json)
end