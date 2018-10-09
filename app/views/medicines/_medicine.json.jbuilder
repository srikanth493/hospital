json.extract! medicine, :id, :name, :number_of_tablets, :cost, :expiry_date, :created_at, :updated_at
json.url medicine_url(medicine, format: :json)
