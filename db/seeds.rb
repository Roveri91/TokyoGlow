# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Heartlessly destroying all the hospitals"
Hospital.delete_all

puts "Destroying all the USERS"
User.delete_all

users = []
puts "Creating new Fabulous Users"

user = User.create!(username: "Giulia", email: "GiuliaMenin@gmail.com", password: "123456")
users << user
puts "created user #{user.username}"

user = User.create!(username: "Tenny", email: "TennyMa@gmail.com", password: "123456")
users << user
puts "created user #{user.username}"

user = User.create!(username: "Jonny", email: "JonnySmith@gmail.com", password: "123456")
users << user
puts "created user #{user.username}"

user = User.create!(username: "Simone", email: "SimoneRoveri@gmail.com", password: "123456")
users << user
puts "created user #{user.username}"

puts "Building new hospitals. This could take a while..."

hospital = Hospital.create!(name: "Tokyo Hospital", price_range: "10 - 1,000,000", services: "English speaking",
   description: "This is the hospital for you", average_rating: 3.2, phone_number: "070-0707-0707" )
puts "created #{hospital.name}"


hospital = Hospital.create!(name: "Sanno Hospital", price_range: "20 - 30,000", services: "After child-care",
    description: "The best hospital in Tokyo", average_rating: 4.5, phone_number: "123-4567-8901" )
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Imperial Hospital", price_range: "100 - 10,000,000", services: "Servants on hand 24/7",
      description: "Hospital for Emperors", average_rating: 2.7, phone_number: "432-6534-6534-" )
puts "created #{hospital.name}"

puts "Done! Thank you for your patience."
