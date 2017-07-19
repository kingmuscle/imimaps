10.times do
  Student.create!(
    import_id: n,
    enrolment_number: (500000+Faker::Number.number(3)).to_s,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    birthday: Faker::Date.birthday(18, 65),
    birthplace: Faker::Address.country
  )
end
# hash = {"Vietnam" => "Hanoi","Egypt" => "Kairo","Mexico" => "Tijuana","Ireland" => "Dublin","Switzerland" => "Bern","China" => "Peking","United States" => "Washington", "Japan" => "Tokyo", "Australia" => "Sydney", "United Kingdom" => "London", "Brazil" => "Sao Paolo", "Germany" => "Berlin", "South Africa" => "Cape Town", "Canada" => "Toronto"}
# countries = hash.keys

# n=1
# 10.times do
#   r = rand(countries.size)
#   Student.where(
#        import_id: n,
#        enrolment_number: (500000+n).to_s,
#        first_name: "Klaus",
#        last_name: "Muster",
#        email: "klaus@peter.com",
#        birthday: Time.at(rand*Time.now.to_f).to_date,
#        birthplace: hash[countries[rand(countries.size)]]).first_or_create!
# end