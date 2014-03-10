json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :username, :birthdate, :user_valid
  json.url user_url(user, format: :json)
end
