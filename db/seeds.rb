# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean
puts "DataBase Clean"


10.times do 
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, encrypted_password: Faker::Internet.password(min_length: 10, max_length: 20), email: Faker::Name.name + "@yopmail.com", description: Faker::Quote.matz)
    #Event.create(start_date: Faker::Date.in_date_period(year: 2019, month: 11), duration: Faker::Number.between(from: 15, to: 380), title: Faker::TvShows::SouthPark.character, description: Faker::TvShows::SouthPark.quote, price: Faker::Number.between(from: 1, to: 1000), location: Faker::Address.city)
    
end 

20.times do
    Event.create(start_date: Faker::Date.in_date_period(year: 2019, month: 12), duration: Faker::Number.within(range: 10..20)*5, title: Faker::Beer.brand, description: Faker::Lorem.sentence(word_count: 5), price: Faker::Number.within(range: 1..300), location: Faker::JapaneseMedia::OnePiece.location)
    puts "events are created"
end 


#30.times do
#Attendance.create(stripe_customer_id: User.all.sample.first_name)
#puts "User, Event et Attendance créés avec succès"
#end 

