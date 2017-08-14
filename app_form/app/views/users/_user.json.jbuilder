json.extract! user, :id, :name, :birthdate, :address, :telephone, :city, :state, :zip, :apply, :hire, :pjob, :created_at, :updated_at
json.url user_url(user, format: :json)
