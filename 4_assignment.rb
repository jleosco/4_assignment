# a resturuant looks like this
# res_data = {
#   id: INTEGER *MUST BE UNIQUE,
#   name: STRING,
#   location: {
#     city: STRING,
#     state: STRING,
#   },
#   delivery: BOOLEAN,
#   days_open: STRING *DAYS SEPERATED BY COMMAS(NO SPACES) ie 'mon,tue,wed',
#   likes: INTEGER,
#   dishes: ARRAY OF OBJECTS/HASHES
#     { name: STRING, price: FLOAT, ingredients: ARRAY OF STRINGS },
#   ],
#   reviews: ARRAY OF HASHES [
#     {user_id: INTEGER *id of user object, rating: INTEGER 0-5}
#   ]
# }
user1 = {
  id: 1,
  name: "Tony",
}
user2 = {
  id: 2,
  name: "Sally",
}
res1 = {
  id: 1,
  name: "Spicy Thai",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: true,
  days_open: "mon,tues,wed,thur,fri,sat,sun",
  likes: 1000,
  dishes: [
    { name: "Pad Thai", price: 10.25, ingredients: ["noddles", "peppers"] },
    { name: "Drunken Noodle", price: 9.25, ingredients: ["noddles", "chicken"] },
  ],
  reviews: [
    { user_id: 1, rating: 5 },
    { user_id: 2, rating: 3 },
  ],
}
res2 = {
  id: 2,
  name: "Albertos",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: false,
  days_open: "mon,tues,wed,thur,fri,sat",
  likes: 500,
  dishes: [
    { name: "Tacos", price: 8.25, ingredients: ["tortilla", "carne"] },
    { name: "Quesidalla", price: 9.25, ingredients: ["tortilla", "cheese"] },
  ],
  reviews: [
    { user_id: 1, rating: 2 },
    { user_id: 2, rating: 4 },
  ],
}

# access user1 name through user1

puts "Task 1"

p user1[:name]

# access user1 name through res2 (user1 data is in reviews)

puts "Task 2"

users = [user1, user2]

def user_id_num(res)
  @review_data = res[:reviews][0][:user_id]
end

user_id_num(res2)
p users[@review_data - 1][:name]

# access res1 reviews

puts "Task 3"

res1[:reviews].each do |review|
  p review
end

# what does this output res1[:dishes]

puts "Task 4"
p res1[:dishes]

# [{:name=>"Pad Thai", :price=>10.25, :ingredients=>["noddles", "peppers"]}, {:name=>"Drunken Noodle", :price=>9.25, :ingredients=>["noddles", "chicken"]}]


# print out just the name or res1 dishes (each loop)

puts "Task 5"

def res1_dish_names (res)
  name = []
  res[:dishes].each do |dish|
    name.push(dish[:name])
  end
  name
end

puts res1_dish_names(res1)

# print out just the name or res1 dishes along with ingredients (nested each loop)

puts "Task 6"

def res1_dish_names (res)
  name_ingred = []
  res[:dishes].each do |dish|
    name_ingred.push("#{dish[:name]}:")
      dish[:ingredients].each do |ingredient|
        name_ingred.push(ingredient)
      end
    end
  name_ingred
end

puts  res1_dish_names(res1)

# create a function that takes a user and return a string with the users name and id

puts "Task 7"

def print_user_info(user)
  "#{user[:name]} - id# #{user[:id]}"
end

puts print_user_info(user1)


# create a method that takes a res and returns the menu of that res

puts "Task 8"

def rest_menu(res)
  menu = []
  res[:dishes].each do |dish|
    menu.push("#{dish[:name]} - $#{dish[:price]}")
  end
  menu
end

puts rest_menu(res1)

# create that takes a res and returns average review

puts "Task 9"

def average_review(res)
  rate = []
  res[:reviews].each do |review|
    rate.push(review[:rating])
  end
  total = rate.sum
  average = total / rate.count
end

puts average_review(res2)

# create an array of restaurants and do CRUD actions
# a simple that takes a restaurants and adds to your array
# a simple that takes restaurants and updates that to your array
# loop through your restaurants and return those with likes > 500 (select/filter)
# No interaction with terminal