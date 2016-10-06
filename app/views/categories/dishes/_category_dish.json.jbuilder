json.extract! category_dish, :id, :[title, :user_id, :prep_time, :ingredients, :directions, :category, :created_at, :updated_at
json.url category_dish_url(category_dish, format: :json)