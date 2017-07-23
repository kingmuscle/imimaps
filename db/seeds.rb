# encoding: UTF-8
Dir[File.join(Rails.root, 'db', 'seed', '*.rb')].sort.each { |seed| load seed }

puts "seeding database"

PaymentState.where(name: "uncharted", name_de: "unbekannt").first_or_create
PaymentState.where(name: "cash benefit", name_de: "bezahlt").first_or_create
PaymentState.where(name: "noncash benefit", name_de: "geldlos vergütet").first_or_create
PaymentState.where(name: "no payment", name_de: "keine Bezahlung").first_or_create

RegistrationState.where(name: "not in examination office", name_de: "nicht beim Prüfungsamt").first_or_create
RegistrationState.where(name: "in examination office", name_de: "beim Prüfungsamt").first_or_create
RegistrationState.where(name: "accepted", name_de: "zugelassen").first_or_create
RegistrationState.where(name: "accepted, but passed courses are still missing", name_de: "zugelassen, aber bestandene Kurse nicht vorhanden").first_or_create
RegistrationState.where(name: "accepted, but contract is still missing", name_de: "zugelassen, aber Vertrag nicht vorhanden").first_or_create

ContractState.where(name: "missing", name_de: "nicht vorhanden").first_or_create
ContractState.where(name: "copy in the office", name_de: "Kopie vorhanden").first_or_create
ContractState.where(name: "original in examination office", name_de: "Original beim Prüfungsamt").first_or_create

ReportState.where(name: "missing", name_de: "nicht vorhanden").first_or_create
ReportState.where(name: "in the office", name_de: "vorhanden").first_or_create
ReportState.where(name: "read", name_de: "gelesen").first_or_create

CertificateState.where(name: "missing", name_de: "nicht vorhanden").first_or_create
CertificateState.where(name: "in the office", name_de: "vorhanden").first_or_create
CertificateState.where(name: "signed by professor in charge", name_de: "von zuständigem Professor unterschrieben").first_or_create
CertificateState.where(name: "signed by internship officer", name_de: "vom Praktikumsbeauftragten unterschrieben").first_or_create
CertificateState.where(name: "in examination office", name_de: "beim Prüfungsamt").first_or_create

InternshipState.where(name: "passed", name_de: "bestanden").first_or_create
InternshipState.where(name: "internship was abandoned because of the following reasons", name_de: "abgelehnt aus folgenden Gründen").first_or_create
InternshipState.where(name: "the student still has to pass the following courses", name_de: "Student hat die folgenden Kurse zu absolvieren").first_or_create

AdminUser.create(:email => "admin@imimaps.de", :password => 'geheim123', :password_confirmation => 'geheim123')


hash = {"Vietnam" => "Hanoi","Egypt" => "Kairo","Mexico" => "Tijuana","Ireland" => "Dublin","Switzerland" => "Bern","China" => "Peking","United States" => "Washington", "Japan" => "Tokyo", "Australia" => "Sydney", "United Kingdom" => "London", "Brazil" => "Sao Paolo", "Germany" => "Berlin", "South Africa" => "Cape Town", "Canada" => "Toronto"}
countries = hash.keys

profs = ReadingProf.all.size
sems = Semester.all.size
iR = InternshipRating.first

Internship.destroy_all

n=1
10.times do
	r = rand(countries.size)
	Student.where(
       import_id: n,
       enrolment_number: (500000+n).to_s,
       first_name: "Klaus",
       last_name: "Muster",
       email: "klaus@peter.com",
       birthday: Time.at(rand*Time.now.to_f).to_date,
       birthplace: hash[countries[rand(countries.size)]]).first_or_create!

  r_employees = rand(500)
  r_phone = rand(8999999)+1000000

	semester = Semester.find(rand(Semester.count)+1)
  reading_prof = ReadingProf.find(rand(ReadingProf.count)+1)
  company = Company.last
  student = Student.last

  reading_prof_id = reading_prof.id if reading_prof

  r_salary = rand(1500)+1
  r_work = rand(20)+21
  r_living = rand(400)+301

  r_o = rand(Orientation.count)+1
  r_a = rand(65)+16

  r_b = rand(15)+11
  r_e = rand(10)+16
  r_p = rand(50)

  r_c_s = rand(ContractState.count)+1
  r_r_s = rand(RegistrationState.count)+1
  r_re_s = rand(ReportState.count)+1
  r_ce_s = rand(CertificateState.count)+1
  r_p_s = rand(PaymentState.count)+1
  r_i_s = rand(InternshipState.count)+1

  min_date = Time.now - 8.years
  max_date = Time.now - 1.year
  endDate = rand(min_date..max_date)

  internship = Internship.new(title: "Awesome Developer#{n}", salary: r_salary, internship_rating_id: iR.id, working_hours: r_work, living_costs: r_living, company_id: company.id, student_id: student.id, semester_id: semester.id, start_date: min_date, end_date: endDate, operational_area: Orientation.offset(r_o).first,
      tasks: "a"*r_a, orientation_id: r_o, supervisor_name: "b"*r_b, supervisor_email: "e"*r_e,
    registration_state_id: r_r_s, contract_state_id: r_c_s, report_state_id: r_re_s, certificate_state_id: r_ce_s,
    payment_state_id: r_p_s, internship_state_id: r_i_s, comment: "p"*r_p, reading_prof_id: reading_prof_id, certificate_to_prof: Time.at(rand*Time.now.to_f).to_date,
    certificate_signed_by_prof: Time.at(rand*Time.now.to_f).to_date, certificate_signed_by_internship_officer: Time.at(rand*Time.now.to_f).to_date)
  s = rand(5)+1
  ary = []
  s.times do
    ary << rand(10)+1
  end
  internship.programming_languages = ProgrammingLanguage.where(:id => ary.uniq)
  internship.save

  n+=1

end

InternshipOffer.create(title: "Java in Barcelona", body: "come to Barcelona and do some Java Programming with us!")

User.destroy_all
User.create!(password: "testmap", email: "test@imimaps.com", student_id: 1)
User.create(:email => "user@imimaps.de", :password => 'geheim123', :password_confirmation => 'geheim123', student_id: 1)
