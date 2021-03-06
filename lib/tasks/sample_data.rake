namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Eric Liu",
                         email: "eric@ajisen.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)
    admin2 = User.create!(name: "ScotterC",
                         email: "scott@artsicle.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin2.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@ajisen.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end