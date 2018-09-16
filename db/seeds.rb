# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def add_random_course
  c = Course.create(
    title: Faker::Company.unique.catch_phrase,
    description: Faker::Lorem.paragraph(10, true, 6),
    semester: "FS19"
  )

  rand(8..10).times do
    add_random_meeting(c.id)
  end
end

def add_random_meeting(course_id)
  m = Meeting.create(
      course_id: course_id,
      topic: Faker::Company.unique.catch_phrase,
      description: Faker::Lorem.paragraph(10, true, 6),
      date: Faker::Date.between(Date.today + 8.days, 1.year.from_now),
      type_of_meeting: Rails.configuration.types_of_meeting.sample #["Vorlesung", "Prüfung", "Sitzung", "Vortrag", "Übung"].sample
    )

    rand(1..3).times do
        add_random_literature(m.id)
    end
end

def add_random_literature(meeting_id)
  Literature.create(
    meeting_id: meeting_id,
    title: Faker::Book.author + ': "' + Faker::Book.title + '" - ' + Faker::Book.publisher
  )
end


c1 = Course.create(
    title: "Einführung in die Theologie",
    description: "Theologie bedeutet „die Lehre von Gott“ oder Göttern im Allgemeinen und die Lehren vom Inhalt eines spezifischen religiösen Glaubens und seinen Glaubensdokumenten im Besonderen.",
    semester: "FS19"
  )
c1.avatar.attach(io: File.open("#{Rails.root}/app/assets/images/bible.jpg"), filename: 'bible.jpg')

m1 = Meeting.create(
    course_id: c1.id,
    topic: "Theologie und ihre Geschichte",
    description: "Theologen in der Alten Kirche waren häufig Bischöfe, im Mittelalter in der Regel Mönche. Mit der Entstehung der Universitäten als Ordenshochschulen im Mittelalter bildete die Theologie meist die erste Fakultät. Im Hochmittelalter bekam der Begriff bei Peter Abaelard (Frühscholastik) und Bonaventura (Hochscholastik) erstmals die allgemeinere Bedeutung das Gebiet des heiligen Wissens, das die gesamte christliche Lehre umfasste. Zum feststehenden Begriff in diesem Sinn wurde Theologie insbesondere aufgrund der Summa theologica von Thomas von Aquin, der Theologie in erster Linie als spekulative, theoretische Wissenschaft ansah.",
    date: Date.today,
    type_of_meeting: "Vorlesung"
  )

m1.video.attach(io: File.open("#{Rails.root}/app/assets/files/kenny1.mp4"), filename: 'kenny1.mp4')

l1 =  Literature.create(
    meeting_id: m1.id,
    title: "Einführung in die Geschichte der Theologie (englisch). S.1-20 ",
  )

l1.attachment.attach(io: File.open("#{Rails.root}/app/assets/files/einftheologie.pdf"), filename: 'einftheologie.pdf')

m2 = Meeting.create(
    course_id: c1.id,
    topic: "Grundfragen der Theologie",
    description: "Die christliche Theologie vertritt das Selbstverständnis, eine wissenschaftliche Auseinandersetzung mit den Quellen christlichen Glaubens und christlicher Glaubenspraxis zu leisten sowie die Darstellung christlichen Glaubens und seine systematische Analyse zu liefern. Die Wissenschaftsfähigkeit der Theologie ist umstritten. Fragestellungen der Wissenschaftstheorie der Theologie werden im Teilgebiet der Fundamentaltheologie, die eine Teildisziplin der systematischen Theologie ist, behandelt.",
    date: Date.today + 7.days,
    type_of_meeting: "Vorlesung"
  )

m2.video.attach(io: File.open("#{Rails.root}/app/assets/files/kenny2.mp4"), filename: 'kenny2.mp4')

l2 =  Literature.create(
    meeting_id: m2.id,
    title: 'Wolfhart Pannenberg: "Grundfragen der Theologie". S. 1-15',
  )

l2.attachment.attach(io: File.open("#{Rails.root}/app/assets/files/grundfragen.pdf"), filename: 'grundfragen.pdf')


rand(6..8).times do
  add_random_meeting(c1.id)
end

c2 = Course.create(
    title: "Die Philosophie von Spinoza",
    description: "Spinoza war ein niederländischer Philosoph und Sohn portugiesischer Immigranten sephardischer Herkunft und portugiesischer Muttersprache.",
    semester: "FS19"
  )
c2.avatar.attach(io: File.open("#{Rails.root}/app/assets/images/benedict-de-spinoza.jpg"), filename: 'spinoza.jpg')

rand(8..10).times do
  add_random_meeting(c2.id)
end

c3 = Course.create(
    title: "Was ist Ontologie?",
    description: "Ontologie Die Ontologie ist eine Disziplin der Philosophie, die sich mit der Einteilung des Seienden und den Grundstrukturen der Wirklichkeit befasst.",
    semester: "FS19"
  )
c3.avatar.attach(io: File.open("#{Rails.root}/app/assets/images/ontology.png"), filename: 'ontology.png')

rand(8..10).times do
  add_random_meeting(c3.id)
end


50.times do

  add_random_course

end

User.create(
    email: "s.raess@me.com",
    password: 123456,
    role: "admin"
)

20.times.each do
  u = User.create(
          email: Faker::Internet.email,
          password: "12345678"
      )
end
