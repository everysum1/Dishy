Category.destroy_all
Dish.destroy_all

Category.create(name:"Appetizers")
Category.create(name:"Salads")
Category.create(name:"Entree")
Category.create(name:"Dessert")

User.create(username:"Kimmy", email:"kim@kim.com", password:"1111111")
User.create(username:"Izzy", email:"iz@iz.com", password:"1111111")
User.create(username:"Younay", email:"yy@yy.com", password:"1111111")
User.create(username:"Hakimmy", email:"hk@hk.com", password:"11111111111111")
User.create(username:"Kenny", email:"kk@kk.com", password:"1111111")


15.times do
  dish = Category.all.sample.dishes.new(title:"Gumbo beet greens corn", prep_time:"30 minutes", ingredients:"maize bamboo shoot green bean swiss chard seakale pumpkin", directions:"Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko.")
  dish.user = User.find_by(username:"Kimmy")
  dish.save

  dish = Category.all.sample.dishes.new(title:"Celery quandong swiss chard", prep_time:"40 minutes", ingredients:"chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard", directions:"Pea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jÃ­cama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels.")
  dish.user = User.find_by(username:"Izzy")
  dish.save

  dish = Category.all.sample.dishes.new(title:"Beetroot water spinach okra water", prep_time:"60 minutes", ingredients:"chestnut ricebean pea catsear courgette summer purslane. Water spinach arugula pea tatsoi.", directions:"Aubergine spring onion bush tomato kale radicchio turnip chicory salsify pea sprouts fava bean. Dandelion zucchini burdock yarrow chickpea dandelion sorrel courgette turnip greens tigernut soybean radish artichoke wattle seed endive groundnut broccoli arugula.")
  dish.user = User.find_by(username:"Younay")
  dish.save

  dish = Category.all.sample.dishes.new(title:"Soko radicchio bunya nuts", prep_time:"60 minutes", ingredients:"dulse silver beet parsnip napa cabbage lotus root sea lettuce brussels sprout cabbage", directions:"Catsear cauliflower garbanzo yarrow salsify chicory garlic bell pepper napa cabbage lettuce tomato kale arugula melon sierra leone bologi rutabaga tigernut. Sea lettuce gumbo grape kale kombu cauliflower salsify kohlrabi okra sea lettuce broccoli celery lotus root carrot winter purslane turnip greens garlic. JÃ­cama garlic courgette coriander radicchio plantain scallion cauliflower fava bean desert raisin spring onion chicory bunya nuts.")
  dish.user = User.find_by(username:"Hakimmy")
  dish.save
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
