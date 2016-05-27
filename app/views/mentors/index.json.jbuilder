json.array!(@mentors) do |mentor|
  json.extract! mentor, :id, :user_id
  json.url mentor_url(mentor, format: :json)
end
