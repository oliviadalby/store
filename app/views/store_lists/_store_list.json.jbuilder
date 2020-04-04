json.extract! store_list, :id, :name, :open, :employees, :created_at, :updated_at
json.url store_list_url(store_list, format: :json)
