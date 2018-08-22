20.times do |n|
  title = Faker::Pokemon.name
  content = Faker::Hipster.paragraph(2, false, 4)
  opening_time = Faker::Time.forward(7, :evening)
  Event.create!(title: title,
               content: content,
               opening_time: opening_time,
               "event_day(1i)" => opening_time.year.to_s,
               "event_day(2i)"=> opening_time.month.to_s,
               "event_day(3i)"=> opening_time.day.to_s
               )
end
