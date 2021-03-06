# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts 'Creating 10 fake games...'
10.times do
  game = Game.new(
    title: Faker::Game.title,
    category: Faker::Game.genre,
    description: Faker::Lorem.sentences(number: 2),
    address: Faker::Address.street_address,
    daily_price: rand(3000..5000)
  )
  game.save!
end
puts 'Finished!'


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


