10.times do
  InternshipOffer.create!(
    title: Faker::Job.field,
    body: Faker::ChuckNorris.fact
  )
end
# InternshipOffer.create(title: "Java in Barcelona", body: "come to Barcelona and do some Java Programming with us!")