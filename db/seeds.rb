# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all the users"
User.delete_all

users = []
puts "Creating new users"

user = User.create!(email: "giuliamenin@gmail.com", password: "123456", username: "Giulia", due_date: "2023-12-01")
users << user
puts "created #{user.username} user"

user = User.create!(email: "tennyma@gmail.com", password: "123456", username: "Tenny", due_date: "2023-12-02")
users << user
puts "created #{user.username} user"

user = User.create!(email: "jonnySùmmith@gmail.com", password: "123456", username: "Jonny", due_date: "2023-12-03")
users << user
puts "created #{user.username} user"

user = User.create!(email: "simoneroveri@gmail.com", password: "123456", username: "Simone", due_date: "2023-12-04")
users << user
puts "created #{user.username} user"

puts "Done"
