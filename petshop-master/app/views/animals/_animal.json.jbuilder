json.extract! animal, :id, :Species, :Breed, :Price, :Status, :created_at, :updated_at
json.url animal_url(animal, format: :json)
