# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

300.times do

  c = Course.create(
    title: Faker::Company.unique.catch_phrase,
    description: Faker::Lorem.paragraphs(rand(2..8)).join('\n'),
    semester: "FS19"
  )

  rand(8..15).times do
    Session.create(
      course_id: c.id,
      topic: Faker::Company.unique.catch_phrase,
      description: Faker::Lorem.paragraphs(rand(2..8)).join('\n'),
      date: Faker::Date.between(Date.today, 1.year.from_now)
    )
  end

end
