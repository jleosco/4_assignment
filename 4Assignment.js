let user1 = {
  id: 1,
  name: "Tony",
}
let user2 = {
  id: 2,
  name: "Sally",
}
let res1 = {
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
let res2 = {
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


// access user1 name through user1
// access user1 name through res2 (user1 data is in reviews)
// access res1 reviews
// what does this output res1[:dishes]
// print out just the name or res1 dishes (each loop)
// print out just the name or res1 dishes along with ingredients (nested each loop)
// create a function that takes a user and return a string with the users name and id
// create a method that takes a res and returns the menu of that res
// create that takes a res and returns average review
// create an array of restaurants and do CRUD actions
// a simple that takes a restaurants and adds to your array
// a simple that takes restaurants and updates that to your array
// loop through your restaurants and return those with likes > 500 (select/filter)
// I want to think of ideas simple/hard and through them in slack
// more to come
// No interaction with terminal