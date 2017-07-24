Internship.destroy_all

company = Company.last
student = Student.last
intern_rating_id = InternshipRating.first
semester = Semester.last
readingProf = ReadingProf.first
n=1
10.times do
  r_o = rand(Orientation.count)+1
  r_c_s = rand(ContractState.count)+1
  r_r_s = rand(RegistrationState.count)+1
  r_re_s = rand(ReportState.count)+1
  r_ce_s = rand(CertificateState.count)+1
  r_p_s = rand(PaymentState.count)+1
  r_i_s = rand(InternshipState.count)+1

  Internship.create!(
      title: Faker::Job.title,
      salary: Faker::Number.number(4),
      internship_rating_id: intern_rating_id,
      working_hours: Faker::Number.number(2),
      living_costs: Faker::Number.number(3),
      company_id: company.id,
      student_id: student.id,
      semester_id: semester.id,
      start_date: Faker::Date.backward(14),
      end_date: Faker::Date.backward(12),
      operational_area: Faker::Job.title,,
      tasks: Faker::ChuckNorris.fact,
      orientation_id: r_o,
      supervisor_name: Faker::Name.last_name,
      supervisor_email: Faker::Internet.email,
      registration_state_id: r_r_s,
      contract_state_id: r_c_s,
      report_state_id: r_re_s,
      certificate_state_id: r_ce_s,
      payment_state_id: r_p_s,
      internship_state_id: r_i_s,
      comment: Faker::ChuckNorris.fact,
      reading_prof_id: readingProf.id,
      certificate_to_prof: Faker::Date.backward(5),
      certificate_signed_by_prof: Faker::Date.backward(5),
      certificate_signed_by_internship_officer: Faker::Date.backward(5)
    )
  n+=1
end  