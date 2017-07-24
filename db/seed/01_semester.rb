Semester.destroy_all
4.times do
  Semester.create!(
    name: Faker::Number.number(2),
    id: Faker::Number.number(1)
  )
end 