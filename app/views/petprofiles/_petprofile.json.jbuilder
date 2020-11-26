json.extract! petprofile, :id, :name, :category_id, :gender_id, :breed, :DOB, :pedigree, :vaccinated, :microchipped, :available, :user_id, :about, :created_at, :updated_at
json.url petprofile_url(petprofile, format: :json)
