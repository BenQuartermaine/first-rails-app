# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
Person.delete_all
puts "DB is clean"

puts "Creating People"
100.times do
  person = Person.create(
    name: Faker::FunnyName.two_word_name,
    age: rand(1..80),
    review: ['Very good', 'meteorite', 'into it'].sample
  )
  puts "Person #{person.id} was created"
end
puts "Seed complete"