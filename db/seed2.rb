CreateUsers.create([{
  last_name: Faker::Name.last_name,
  first_name: Faker::Name.first_name,
#  major:
  email: Faker::Internet.email,
  role: Faker::Job.title
  }])

5 times do
  CreateCompanies.create([{
    name: Faker::Company.name,
    address: Faker::Address.city,
    department: Faker::Name.suffix #like IV
    number_employees: Faker::Number.number(5),
  #  industry:
    website: Faker::Internet.url('example.com')
    }])
end

CreateInternships.create([{
  orientation: Faker::Job.field,
#  :programming_language:
  salary: Faker::Number.decimal(2),
  working_hours: Faker::Number.decimal(2),
  living_costs: Faker::Number.decimal(2)
  }])

5 times do
  CreateContactPeople.create([{
    first_name: Faker::Name.last_name,
    last_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    company_id: Faker::Number.number(1)
    }])
end

20 times do
  CreateProgrammingLanguages.create([{
  #    name: string,
      }])
end

CreateInternshipsProgrammingLanguagesJoinTable.create([{
  programming_language_id: Faker::Number.number(1),
  internship_id: Faker::Number.number(2)
  }])

CreateSalaries.create([{
  amount: Faker::Number.number(2),
  order_id: Faker::Number.number(1)
  }])

CreateAttachments.create([{
  description: Faker::ChuckNorris.fact,
  file: Faker::File.mime_type
  # attachable: references
  }])

CreateComments.create({[
  commenter: Faker::Name.name,
  body: Faker::ChuckNorris.fact
# post: references
      ]})

CreateInternshipSearches.create([{
  country: Faker::Address.country,
  city: Faker::Address.city,
  # industry:
  orientation: Faker::Job.field,
  min_salary: Faker::Number.number(2),
  max_salary: Faker::Number.number(3),
  rating: Faker::Number.number(1)
  }])

CreateFaqs.create([{
  }])

CreateAnswers.create([{
  body: Faker::ChuckNorris.fact
  }])

CreateAdminNotes.create([{
  resource_id: Faker::Number.number(1),
  # resource_type: string 
  # admin_user: references
  body: Faker::ChuckNorris.fact
  }])

CreateFinancings.create({[
  ]})

CreateQuicksearches.create({[
  ]})

CreateDownloads.create([{

  }])

10 times do
  CreateOrientations.create({[
    name: 
    ]})
end

CreateFavorites.create({[
  user_id: Faker::Number.number(1),
  internship_id: Faker::Number.number(1)
  ]})

CreateLocations.create({[
  street: Faker::Address.street_address,
  zip: Faker::Address.zip,
  country: Faker::Address.country,
  city: Faker::Address.city
  ]})

CreateNotifications.create({[
  user_id: Faker::Number.number(1),
  text: Faker::ChuckNorris.fact
  read: Faker::Boolean.boolean
  ]})

4 times do
  CreateSemesters.create({[
    semester: Faker::Number.number(10)
    ]})
end

CreateStudents.create({[
  matrikelNr: Faker::Number.number(5),
  last_name: Faker::Name.last_name,
  first_name: Faker::Name.first_name,
  birthday: Faker::Date.birthday(18, 65),
  email: Faker::Internet.email
  ]})

CreateInternshipRatings.create({[
  tasks: Faker::Number.number(1),
  training_success: Faker::Number.number(1),
  atmosphere: Faker::Number.number(1),
  supervision: Faker::Number.number(1),
  appreciation: Faker::Number.number(1),   

  ]})
CreateFavoriteCompares.create({[

  ]})

5 times do
  CreatePaymentStates.create([{
    # name: string
    # name_de: string
    }])
end

2 times do
  CreateRegistrationStates.create([{
    # name: string -> siehe seeds.db
    # name_de: string
    }])
end

3 times do
  CreateContractStates.create([{
    # name: string
    # name_de: string
    }])
end

2 times do
  CreateReportStates.create([{
    # name: string
    # name_de: string
    }])
end

3 times do
CreateInternshipStates.create([{
  # name: string
  # name_de: string
  }])
end

5 times do
  CreateCertificateStates.create([{
    # name: string
    # name_de: string
    }])
end

CreatePosts.create([{
  body: Faker::ChuckNorris.fact,
  email: Faker::Internet.email
  }])

CreateEmailProcessors.create([{

  }])

5 times do
  CreateReadingProf.create([{
    name: Faker::Name.name 
    }])
end

CreateInternshipOffers.create([{
  title: Faker::Name.title
  body: Faker::ChuckNorris.fact
  pdf: Faker::File.mime_type
  }])

# type text : Faker::ChuckNorris.fact
