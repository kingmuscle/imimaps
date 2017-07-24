10.times do
  InternshipOffer.create!(
    title: Faker::Job.field,
    body: Faker::ChuckNorris.fact
  )
end