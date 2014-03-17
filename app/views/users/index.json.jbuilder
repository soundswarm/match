json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :weekly_avail_hr
  json.url user_url(user, format: :json)
end
