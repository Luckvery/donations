namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Russell John-Baptiste",
                 email: "luckvery@gmail.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)

    User.create!(name: "Katya",
                 email: "katay@gmail.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)

    User.create!(name: "Micheal Hartl",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)


    99.times do |n|
      name  = Faker::Name.name
      email = "funkymonkey-#{n+1}@railstutorial.org"
      password  = "foobar"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
