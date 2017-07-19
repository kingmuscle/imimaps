AdminUser.create(:email => "admin@imimaps.de", :password => 'geheim123', :password_confirmation => 'geheim123')
User.destroy_all
User.create!(password: "testmap", email: "test@imimaps.com", student_id: 1)
