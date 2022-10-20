json.extract! therapist, :id, :first_name, :last_name, :kind, :phone_number, :url, :picture, :created_at, :updated_at
json.url therapist_url(therapist, format: :json)
