json.array!(@usernames) do |username|
  json.extract! username, :id, :username, :user_id
  json.url username_url(username, format: :json)
end
