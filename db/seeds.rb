# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitten.destroy_all # HOW COULD YOU?!

Kitten.create({
  name: 'Timmy',
  age: 1,
  cuteness: 8,
  softness: 9
})

Kitten.create({
  name: 'Tammy',
  age: 8,
  cuteness: 7,
  softness: 10
})

Kitten.create({
  name: 'Ben',
  age: 13,
  cuteness: 8,
  softness: 7
})