FactoryBot.define do
  factory :user do
    email { "connor@random.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
