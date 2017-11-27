Product.destroy_all
Review.destroy_all

prng = Random.new
products = []

50.times do
  products.push(Product.create!(
    name: Faker::Food.ingredient,
    cost: prng.rand(100),
    country: Faker::Address.country
  ))
end

puts "Seeded #{Product.count} products."

250.times do
  product = products[prng.rand(products.length)]
  reviewtext = Faker::Lorem.sentence
  while reviewtext.length < 50
    reviewtext += Faker::Lorem.word
  end
  product.reviews.create!(
    author: Faker::Name.name,
    rating: prng.rand(1..5),
    content: reviewtext
  )
end


puts "Seeded #{Review.count} reviews."