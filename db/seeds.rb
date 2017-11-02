user_one = User.create!(
  email:    'user_one@example.com',
  password: 'helloworld'
)

user_two = User.create!(
  email:    'user_two@example.com',
  password: 'helloworld'
)

user_three = User.create!(
  email:    'user_three@example.com',
  password: 'helloworld'
)

users = User.all

users.each do |user|
    3.times do
        RegisteredApplication.create!(
            user_id: user.id,
            name: Faker::App.unique.name,
            url: Faker::Internet.unique.url
            )
    end
end

apps = RegisteredApplication.all

apps.each do |app|
    20.times do
        Event.create!(
            registered_application_id: app.id,
            name: Faker::BossaNova.song
            )
    end
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"

