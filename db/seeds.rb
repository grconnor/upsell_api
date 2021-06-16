# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create!([{
  id: 1,
  name: "Private Parking",
  description: "Get your own exclusive parking space located behind the building away from other guests and guest vehicles.",
  price: 100,
},
                 {
  id: 2,
  name: "Game Drive",
  description: "Get up close and personal with the inhabitants of Intle and experience a different perspective on wildlife as you know it.",
  price: 200,
},
                 {
  id: 3,
  name: "Day Picnic",
  description: "Take in the breathtaking views at one of our designated picnic viewpoints while enjoying a relaxed picnic amongst the reserve inhabitants.",
  price: 100,
},
                 {
  id: 4,
  name: "Guided Hike",
  description: "Experience the wilderness while on a 5km guided hike with one of our knowledgable staff members. Wine and food are available on request and picnics can be incorporated.",
  price: 150,
},
                 {
  id: 5,
  name: "Buffalo Feeding",
  description: "Get a chance to get up close and personal during feeding time with the largest species of buffalo, one of the big 5 here in South Africa.",
  price: 300,
},
                 {
  id: 6,
  name: "Anniversary Package",
  description: "Celebrate your special anniversary with your loved one. Spoil each other with an intimate and romantic weekend away at one of the hidden gems of the Eastern Cape. Dinner under the stars, fine wine, breakfast picnics in the reserve, romantic turndowns and a decadent room surprise are just a few of the things you'll experience together.",
  price: 1700,
},
                 {
  id: 7,
  name: "Airport Shuttle",
  description: "Have an airport shuttle waiting for you on arrival ready to take you to your wildlife dream destination.",
  price: 500,
},
                 {
  id: 8,
  name: "Designer Shower/Bath Products",
  description: "Switch out the standard shower/bath products for luxury ones coming from the likes of Chanel, F.Miller and Aesop.",
  price: 100,
},
                 {
  id: 9,
  name: "Extra hour checkout",
  description: "Need some extra time in the mornings? Prefer to sleep in a little? You deserve the rest, and with the extra hour package you're able to checkout at 11am.",
  price: 150,
},
                 {
  id: 10,
  name: "Early checkin",
  description: "Need to arrive earlier than the standard checkin time? With early checkin you're able to checkin at 9am onwards.",
  price: 150,
},
                 {
  id: 11,
  name: "SigNature Bar 5 Drink Coupon",
  description: "A coupon for the SigNature Bar for 5 drinks free of charge, applies directly at the bar.",
  price: 300,
},
                 {
  id: 12,
  name: "SigNature Bar 10 Drink Coupon",
  description: "A coupon for the SigNature Bar for 5 drinks free of charge, applies directly at the bar.",
  price: 550,
}])
