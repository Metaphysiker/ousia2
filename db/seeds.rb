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
    description: Faker::Lorem.paragraph(10, true, 6),
    semester: "FS19"
  )

  rand(8..15).times do

  m = Meeting.create(
      course_id: c.id,
      topic: Faker::Company.unique.catch_phrase,
      description: Faker::Lorem.paragraph(10, true, 6),
      date: Faker::Date.between(Date.today, 1.year.from_now),
      type_of_meeting: Rails.configuration.types_of_meeting.sample #["Vorlesung", "Prüfung", "Sitzung", "Vortrag", "Übung"].sample
    )

    rand(1..3).times do
      Literature.create(
        meeting_id: m.id,
        title: Faker::Book.author + ': "' + Faker::Book.title + '" - ' + Faker::Book.publisher
      )
    end

  end

end

50.times.each do
  u = User.create(
          email: Faker::Internet.email,
          password: "12345678"
      )
end
