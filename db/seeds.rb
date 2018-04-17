# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# I'm using faker to generate fake data for Tutors. You can do the same to create random sessions by looking at this https://github.com/stympy/faker/blob/master/doc/date.md
for x in 1..10
  tutor = Tutor.new
  tutor.name = Faker::Name.name
  tutor.email = Faker::Internet.email
  tutor.bio = Faker::Lorem.paragraphs(1)[0]
  tutor.subject = Faker::Pokemon.name
  tutor.save
end