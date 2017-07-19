6.times do
  ReadingProf.create!(
    name: Faker::Name.last_name,
  )
end
# ReadingProf.where(name: "Busch").first_or_create
# ReadingProf.where(name: "Barthel").first_or_create
# ReadingProf.where(name: "Strippgen").first_or_create
# ReadingProf.where(name: "Jung").first_or_create
# ReadingProf.where(name: "Kleinen").first_or_create
# ReadingProf.where(name: "Weber-Wulff").first_or_create