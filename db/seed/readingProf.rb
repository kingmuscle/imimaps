ReadingProf.destroy_all
6.times do
  ReadingProf.create!(
    name: Faker::Name.last_name
  )
end