# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require 'faker'
# require "open-uri"

Reply.delete_all
puts "Destroyed all the replies"

Post.delete_all
puts "Destroyed all the posts"

Appointment.delete_all
puts "Destroyed all the appointments"

Review.delete_all
puts "Destroyed all the reviews"

Event.delete_all
puts "Destroyed all the events"

puts "Destroying all the users"
User.delete_all
puts "Destroyed all the users"

users = []
puts "Creating new users"

user = User.create!(email: "giuliamenin@gmail.com", password: "123456", username: "Giulia", due_date: "2023-12-01", avatar: "userF.png")
users << user
puts "created user #{user.username}"

user = User.create!(email: "tennyma@gmail.com", password: "123456", username: "Tenny", due_date: "2023-12-02", avatar: "userF.png")
users << user
puts "created user #{user.username}"

user = User.create!(email: "jonnysmith@gmail.com", password: "123456", username: "Jonny", due_date: "2023-12-03", avatar: "userM.png")
users << user
puts "created user #{user.username}"

user = User.create!(email: "simoneroveri@gmail.com", password: "123456", username: "Simone", due_date: "2023-12-04", avatar: "userM.png")
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
locations = %w[Adachi Arakawa Bunkyo Chiyoda Chuo Edogawa Itabashi Katsushika Kita Koto Minato Meguro Nakano Nerima Ota Setagaya Shibuya Shinagawa Shinjuku Suginami Sumida Taito Toshima]
price_range = %w[$ $$ $$$ $$$$ $$$$$]
services = ["English Speaking", "Interpretation Services", "Private rooms", "Fertility treatments", "Normal deliveries", "Assistance with breastfeeding", "Epidural anesthesia", "In-vitro fertilization", "Embryo transfers", "After child-care", "Servants on hand 24/7", "Kangaroo care", "Post-partum depression assistance"]

hospital = Hospital.create!(name: "Tokyo JR General Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.jreast.co.jp/hospital/index.html/",
   description: "We provide advanced medical treatment in a variety of fields with warm hospitality.", average_rating: 3.2, phone_number: "03-0707-0707", default_image: hospital_image)
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Sanno Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.sannoclc.or.jp/hospital/english/",
    description: " A medical check-up center, a clinic for internal medicine, pediatrics, and orthopedics, and a rehabilitation center. We are dedicated to providing assistance to the Residents of Tokyo to live safely in their familiar environment. ", average_rating: 4.5, phone_number: "03-0612-0770", default_image: "sanno_hospital.jpg" )
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Aiiku Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.aiiku.net/international/",
    description: "In order to ensure the happiness and healthy growth of all mothers and babies, Aiiku Hospital provides high-quality medical care and supports a safe and comfortable pregnancy, labor/delivery, and child-rearing. ", average_rating: 2.7, phone_number: "03-4642-8846", default_image: "aiiku_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Tokyo Takanawa Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://takanawa.jcho.go.jp/",
  description: "The Department of Obstetrics and Gynecology provides medical care for all phases of a woman’s life from puberty to pregnancy, child birth, and menopause, with a main focus on reproduction. ", average_rating: 3.7, phone_number: "03-3324-1123", default_image: "takanawa_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Tokyo Midtown Clinic", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.tokyomidtown-mc.jp/en/",
  description: "In addition to a wide range of medical practices, the Tokyo Midtown Clinic boasts a special outpatient center, next-generation Health Screening Center and more. We provide total health support for our patients. ", average_rating: 2.9, phone_number: "03-5477-3426", default_image: "midtown_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Japan Red Cross Medical Center", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.med.jrc.or.jp/en/tabid/393/Default.aspx",
  description: " The baby and parents play a very important role of childbirth. As a baby- and mother-friendly hospital,
we attach great importance to perinatal safety, and we draw out maternal instinct at childbirth and
during childcare in order to help the baby live and grow healthily", average_rating: 3.7, phone_number: "03-6667-2243", default_image: "red_cross_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Jikei Hospital, Women's and Children's Center", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.hosp.jikei.ac.jp/boshiiryou/",
  description: " Midwives and nurses promote breastfeeding and will help you after delivery. Breastfeeding room with pumps also available.", average_rating: 4.7, phone_number: "03-1123-6688", default_image: "jikei_hospital.png")
puts "created #{hospital.name}"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")

# seed_hospital = Hospital.new(
#   name: 'Tokyo Hospital',
#   address: locations.sample,
#   price_range: '10 - 1,000,000',
#   services: 'English speaking',
#   description: 'This is the hospital for you',
#   average_rating: 3.2,
#   phone_number: "070-0707-0707"
# )
# seed_hospital.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# seed_hospital.save

# puts 'Creating 20 fake hospitals...'
# 20.times do
#   hospital = Hospital.new(
#     name: Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     price: Faker::Commerce.price(range: 10..1000, as_string: true)
#     services: Faker::Quote.most_interesting_man_in_the_world,
#     description: Faker::Date.forward(days: 23),
#     average_rating:  Faker::Number.between(from: 1, to: 5),
#     phone_number: Faker::PhoneNumber,
#     # photo:
#   )
#   photo = Faker::LoremPixel.image(size: "300x200")
#   event.image.attach(io: URI.open(photo), filename: 'image.jpg')  # Attach the image to the event

#   hospital.save!
# end

# puts 'Finished!'

hospital = Hospital.create!(name: "Seibo Catholic Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.seibokai.or.jp/",
  description: "Allow for freedom to labor in different positions if no epidural. Birth partner can be in the room with you (but only husband, not other family members). Epidural available during certain hours and on week days.", average_rating: 1.7, phone_number: "03-6890-2200", default_image: "seibo_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Seijo Kinoshita Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://kinohosp.com/en/labor_and_delivery.html",
  description: " Dr. Kinoshita is known for being quite flexible with laboring positions. Modern, updated facility. Smaller hospital with a focus on maternal and pediatric care, among other things.", average_rating: 4.0, phone_number: "03-8899-4598", default_image: "seijo_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Nagai Mother's Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.nagai-cl.com/",
  description: "We give the option to voluntarily induce labor. On demand epidural, no reservation needed. Also same cost with or without the epidural. One person is allowed in the room with you during labor.", average_rating: 3.9, phone_number: "03-4422-5557", default_image: "nagai_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Kanto Rozai Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://tokyoh.johas.go.jp/en/",
  description: "We encourage kangaroo care after birth and breastfeeding. English support may not be available – please enquire about availability in advance. We accept all major credit cards.", average_rating: 2.9, phone_number: "03-3456-9723", default_image: "kanto_hospital.jpg")
puts "created #{hospital.name}"

# ice_cream_image = URI.open("https://res.cloudinary.com/dsfih62k7/image/upload/v1692098565/ice_cream_amdk0l.webp")

# ice_cream = Event.new(status: 0, title: 'Free ice cream!', content: "grab a book", date: 'Tue, 15 Sept 2023', location: 'Yoyogi Park', time:'Sat, 01 Jan 2000 11:30:00.000000000 UTC +00:00', user: users.sample)

# ice_cream.photo.attach(io: ice_cream_image, filename: "ice_cream.webp", content_type: "image/webp")
# ice_cream.save!

yoga_image = Rails.root.join('app', 'assets', 'images', 'yoga.jpg')
book_image = Rails.root.join('app', 'assets', 'images', 'book.jpg')
diapers_image = Rails.root.join('app', 'assets', 'images', 'diapers.jpg')
ice_cream_image = Rails.root.join('app', 'assets', 'images', 'ice_cream.jpg')

giulia = User.find_by(username: 'Giulia')
jonny = User.find_by(username: 'Jonny')
simone = User.find_by(username: 'Simone')
tenny = User.find_by(username: 'Tenny')

yoga = Event.new(
  status: 0,
  title: 'Come enjoy yoga together!',
  content: 'Yoga instructor of the day: Millie',
  date: Date.today,
  location: 'Yoyogi Park',
  time: Time.now,
  user: giulia,
)
yoga.save!
yoga.photo.attach(io: File.open(yoga_image), filename: 'yoga.jpg', content_type: 'image/jpg')

book = Event.new(
  status: 0,
  title: "Free children's books!",
  content: 'Grab a copy or two today',
  date: Date.today,
  location: 'Yoyogi Park',
  time: Time.now,
  user: jonny,
)
book.save!
book.photo.attach(io: File.open(book_image), filename: 'book.jpg', content_type: 'image/jpg')

diapers = Event.new(
  status: 0,
  title: "Diapers Giveaway!",
  content: 'All sizes available!',
  date: Date.today,
  location: 'Yoyogi Park',
  time: Time.now,
  user: simone,

)
diapers.save!
diapers.photo.attach(io: File.open(diapers_image), filename: 'diapers.jpg', content_type: 'image/jpg')

ice_cream = Event.new(
  status: 0,
  title: 'Free ice cream!',
  content: 'Try 3 new flavors today: mango, cookies & cream, pistachio',
  date: Date.today,
  location: 'Yoyogi Park',
  time: Time.now,
  user: tenny,
)
ice_cream.save!
ice_cream.photo.attach(io: File.open(ice_cream_image), filename: 'ice_cream.jpg', content_type: 'image/jpg')

puts "created 4 events"

puts "Done! Thank you for your patience."
