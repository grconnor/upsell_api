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
  description: "Get your own exclusive parking space located behind the building, total privacy!",
  price: 100
},
{
  id: 2,
  name: "Game Drive",
  description: "Get up close and personal with the inhabitants of Intle to get a different perspective on wildlife as you know it.",
  price: 200
},
{
  id: 3,
  name: "Day Picnic",
  description: "Take in the breathtaking views while enjoying a relaxed picnic amongst the reserve inhabitants.",
  price: 100
},
{
  id: 4,
  name: "Guided Hike",
  description: "Experience the wilderness while on a guided hike with one of our knowledgable staff members, wine and food are available on request.",
  price: 150
},
{
  id: 5,
  name: "Buffalo Feeding",
  description: "Get a chance to get up close and personal during feeding time with the largest species of buffalo, one of the big 5 here in South Africa.",
  price: 300
},
{
  id: 6,
  name: "Anniversary Package",
  description: "Celebrate your special anniversary with your loved one. Spoil each other with an intimate and romantic weekend away at one of the hidden gems of the Eastern Cape. Dinner under the stars, fine wine, breakfast picnics in the reserve, romantic turndowns and a decadent room surprise are just a few of the things you'll experience together.",
  price: 1700
},
{
  id: 7,
  name: "SigNature Bar 5 Drink Coupon",
  description: "A coupon for the SigNature Bar for 5 drinks free of charge, applied directly at the bar.",
  price: 300
},
{
  id: 8,
  name: "SigNature Bar 10 Drink Coupon",
  description: "A coupon for the SigNature Bar for 10 drinks free of charge, applied directly at the bar.",
  price: 600
}])