namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "soundswarm",
                 email: "symbioticshift@yahoo.com" )
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@.23asdforg"
      if n <= 168
        hours = n
      else
        hours = 168
      end
      User.create!(name: name,
                   email: email,
                   weekly_avail_hr: hours
                    )
    end
  end
end