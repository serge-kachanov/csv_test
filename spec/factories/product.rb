FactoryBot.define do
  factory :product do
    name        { Faker::Commerce.product_name }
    price       { Faker::Number.number(5) }
    sku         { Faker::Crypto.sha1 }
    producer    { Faker::Company.name }
    barcode     { Faker::Code.asin }
    photo_url   { Faker::Internet.url }
  end
end
