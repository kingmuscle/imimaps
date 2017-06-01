CreateUsers.create([{
  last_name: Faker::Name.last_name,
  first_name: Faker::Name.first_name,
#  major:
  email: Faker::Internet.email,
  role: Faker::Job.title
  }])

CreateCompanies.create([{
  name: Faker::Company.name,
  address: Faker::Address.city,
  department: Faker::Name.suffix #like IV
  number_employees: Faker::Number.number(5),
#  industry:
  website: Faker::Internet.url('example.com')
  }])

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

CreateProgrammingLanguages.create([{
#    name: string,
    }])

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

CreateOrientations.create({[
  name: 
  ]})

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

CreateSemesters.create({[
  semester: Faker::Number.number(10)
  ]})

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

CreatePaymentStates.create([{
  # name: string
  # name_de: string
  }])

CreateRegistrationStates.create([{
  # name: string
  # name_de: string
  }])

CreateContractStates.create([{
  # name: string
  # name_de: string
  }])

CreateReportStates.create([{
  # name: string
  # name_de: string
  }])

CreateInternshipStates.create([{
  # name: string
  # name_de: string
  }])

CreateCertificateStates.create([{
  # name: string
  # name_de: string
  }])

CreatePosts.create([{
  body: Faker::ChuckNorris.fact,
  email: Faker::Internet.email
  }])

CreateEmailProcessors.create([{

  }])

CreateReadingProf.create([{
  name: Faker::Name.name 
  }])

CreateInternshipOffers.create([{
  title: Faker::Name.title
  body: Faker::ChuckNorris.fact
  pdf: Faker::File.mime_type
  }])

# type text : Faker::ChuckNorris.fact
