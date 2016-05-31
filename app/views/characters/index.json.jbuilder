json.array!(@characters) do |character|
  json.extract! character, :id, :character, :user_id, :corporation, :corporationid
  json.url character_url(character, format: :json)
end
