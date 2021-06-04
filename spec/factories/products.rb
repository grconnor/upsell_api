FactoryBot.define do
  factory :product do
    id { rand(10000) }
    name { "Private Parking" }
    description { "Get your own exclusive parking space located behind the building, total privacy!" }
    price { 100 }
  end
end