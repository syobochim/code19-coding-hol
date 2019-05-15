# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

10.times do
  User.create!(
    email: FFaker::Internet.email,
    name: FFaker::NameJA.name
  )
end

30.times do
  Micropost.create!(
    user_id: Random.rand(1 .. 10),
    content: FFaker::LoremJA.sentence
  )
end




