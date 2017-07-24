# encoding: UTF-8
Dir[File.join(Rails.root, 'db', 'seed', '*.rb')].sort.each { |seed| load seed }

puts "seeding database"

AdminUser.create(:email => "admin@imimaps.de", :password => 'geheim123', :password_confirmation => 'geheim123')
User.destroy_all
User.create!(password: "testmap", email: "test@imimaps.com", student_id: 1)
User.create(:email => "user@imimaps.de", :password => 'geheim123', :password_confirmation => 'geheim123', student_id: 1)
