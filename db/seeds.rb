# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'faker'

puts "Destroying all the posts"
Post.delete_all

puts "Destroying all the users"
User.delete_all

users = []
puts "Creating new users"

user = User.create!(email: "giuliamenin@gmail.com", password: "123456", username: "Giulia", due_date: "2023-12-01")
users << user
puts "created user #{user.username}"

user = User.create!(email: "tennyma@gmail.com", password: "123456", username: "Tenny", due_date: "2023-12-02")
users << user
puts "created user #{user.username}"

user = User.create!(email: "jonnysmith@gmail.com", password: "123456", username: "Jonny", due_date: "2023-12-03")
users << user
puts "created user #{user.username}"

user = User.create!(email: "simoneroveri@gmail.com", password: "123456", username: "Simone", due_date: "2023-12-04")
users << user
puts "created user #{user.username}"


puts "Creating 4 Posts in Chatroom"
Post.create!(title: "Yoga Lesson", content: "Anyone want to join next Tuesday? Yoyogi Park at 10 AM", category: "Event", user: users.sample)
Post.create!(title: "Need referral at St.Luke", content: "Has anyone here ever been before at the St.Luke?", category: "Medical", user: users.sample)
Post.create!(title: "Info needed - Help!", content: "Help - I don't know what I am doing and this will be my first child. Need a doula, any good recommendation?", category: "First Child", user: users.sample)
Post.create!(title: "Cravings - is loving natto normal?", content: "I hated it before and now it's my best friend - am I sick?", category: "Food and Nutrition", user: users.sample)
puts "Done creating posts"

puts "Heartlessly destroying all the hospitals"
Hospital.delete_all
puts "Hospitals destroyed. People are crying"

puts "Building new hospitals. This could take a while..."

hospital_image = "default_hospital_image.jpg"
locations = %w[Tokyo Nakano Nogizaka Harajuku Shinjuku]

hospital = Hospital.create!(name: "Tokyo Hospital", address:locations.sample, price_range: "10 - 1,000,000", services: "English speaking",
   description: "This is the hospital for you", average_rating: 3.2, phone_number: "070-0707-0707", default_image: hospital_image )
puts "created #{hospital.name}"


hospital = Hospital.create!(name: "Sanno Hospital", address:locations.sample, price_range: "20 - 30,000", services: "After child-care",
    description: "The best hospital in Tokyo with a really long description so I can see how long it looks on the index page. But actually it needs to be a little bit longer so it goes beyond the card", average_rating: 4.5, phone_number: "123-4567-8901", default_image: hospital_image )
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Imperial Hospital", address:locations.sample, price_range: "100 - 10,000,000", services: "Servants on hand 24/7",
      description: "Hospital for Emperors", average_rating: 2.7, phone_number: "432-6534-6534", default_image: hospital_image )
puts "created #{hospital.name}"

puts "Done! Thank you for your patience."

# puts 'Creating 20 fake events...'
# 20.times do
#   event = Event.new(
#     title: Faker::Hobby.activity,
#     content: Faker::Quote.most_interesting_man_in_the_world,
#     date: Faker::Date.forward(days: 23),
#     time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
#     location: "#{Faker::Address.street_address}, #{Faker::Address.city}"
#     # photo:
#   )
#   photo = Faker::LoremPixel.image(size: "300x200")
#   event.image.attach(io: URI.open(photo), filename: 'image.jpg')  # Attach the image to the event

#   event.save!
# end

# puts 'Finished!'
