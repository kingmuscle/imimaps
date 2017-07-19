5.times do
  InternshipRating.create!(
    appreciation: Faker::Number.number(1),
    atmosphere: Faker::Number.number(1),
    supervision: Faker::Number.number(1),
    tasks: Faker::Number.number(1),
    training_success: Faker::Number.number(1)
  )
end
# InternshipRating.destroy_all
# InternshipRating.create(:appreciation => 4, :atmosphere => 4, :supervision => 4, :tasks => 4, :training_success => 4)