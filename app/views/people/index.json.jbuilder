json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name
  json.url person_url(person, format: :json)
end
