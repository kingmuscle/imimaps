hash = {"Vietnam" => "Hanoi","Egypt" => "Kairo","Mexico" => "Tijuana","Ireland" => "Dublin","Switzerland" => "Bern","China" => "Peking","United States" => "Washington", "Japan" => "Tokyo", "Australia" => "Sydney", "United Kingdom" => "London", "Brazil" => "Sao Paolo", "Germany" => "Berlin", "South Africa" => "Cape Town", "Canada" => "Toronto"}
countries = hash.keys
r_employees = rand(500)
r_phone = rand(8999999)+1000000

n=1
10.times do
  r = rand(countries.size)
    Company.where(street: "a", zip: "1", name: "Company#{n}", number_employees: r_employees, city: hash[countries[r]],
           country: countries[r], phone: r_phone.to_s, blacklisted: false, import_id: n, website: "www.google.com").first_or_create!
end