4.times do
  Semester.create!(
    name: Faker::Number.number(2),
    id: Faker::Number.number(1)
  )
end

# Semester.where(name: "SS 13", id:1).first_or_create
# Semester.where(name: "WS 12/13", id:2).first_or_create
# Semester.where(name: "SS 12", id:3).first_or_create
# Semester.where(name: "WS 11/12", id:4).first_or_create