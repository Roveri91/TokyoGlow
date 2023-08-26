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

Attendant.delete_all
puts "Destroyed all the attendants"

Message.delete_all
puts "Destroyed all the messages"

Event.delete_all
puts "Destroyed all the events"

Article.delete_all
puts "Destroyed all the articles"

User.delete_all
puts "Destroyed all the users"


users = []
puts "Creating new users"

# ------USERS------

user = User.create!(email: "giuliamenin@gmail.com", password: "123456", username: "Giulia", due_date: "2023-12-01", avatar: "userF2.png")

puts "created user #{user.username}"

user = User.create!(email: "tennyma@gmail.com", password: "123456", username: "Tenny", due_date: "2023-12-02", avatar: "userF1.png")

puts "created user #{user.username}"

user = User.create!(email: "jonnysmith@gmail.com", password: "123456", username: "Jonny", due_date: "2023-12-03", avatar: "userM1.png")

puts "created user #{user.username}"

user = User.create!(email: "simoneroveri@gmail.com", password: "123456", username: "Simone", due_date: "2023-12-04", avatar: "userM2.png")

puts "created user #{user.username}"

user = User.create!(email: "bob@gmail.com", password: "123456", username: "Bob", due_date: "2024-1-02", avatar: "userM1.png")

puts "created user #{user.username}"

user = User.create!(email: "jessy@gmail.com", password: "123456", username: "Jessy", due_date: "2022-11-12", avatar: "userF1.png")

puts "created user #{user.username}"

user = User.create!(email: "mario@gmail.com", password: "123456", username: "Mario", due_date: "2022-10-24", avatar: "userM4.png")

puts "created user #{user.username}"

user = User.create!(email: "diana@gmail.com", password: "123456", username: "Diana", due_date: "2024-2-28", avatar: "userF3.png")

puts "created user #{user.username}"

user = User.create!(email: "Clementine@gmail.com", password: "123456", username: "Clementine", due_date: "2024-4-5", avatar: "userF4.png")

puts "created user #{user.username}"

user = User.create!(email: "cleo@gmail.com", password: "123456", username: "Cleo", due_date: "2023-11-15", avatar: "userF5.png")

puts "created user #{user.username}"

user = User.create!(email: "Jason@gmail.com", password: "123456", username: "Jason", due_date: "2024-1-16", avatar: "userM3.png")

puts "created user #{user.username}"

user = User.create!(email: "jack@gmail.com", password: "123456", username: "Jack", due_date: "2024-1-16", avatar: "userM2.png")

puts "created user #{user.username}"

user = User.create!(email: "lola@gmail.com", password: "123456", username: "Lola", due_date: "2024-1-16", avatar: "userF6.png")

user = User.create!(email: "peach@gmail.com", password: "123456", username: "Peach", due_date: "2024-1-16", avatar: "userF7.png")

puts "created user #{user.username}"

puts "created user #{user.username}"

users = User.all
# ------POSTS------

puts "Creating 4 Posts in Chatroom"
Post.create!(title: "Yoga Lesson", content: "Anyone want to join next Tuesday? Yoyogi Park at 10 AM", category: "Event", user: users.sample)
Post.create!(title: "Need referral at St.Luke", content: "Has anyone here ever been before at the St.Luke?", category: "Medical", user: users.sample)
Post.create!(title: "Info needed - Help!", content: "Help - I don't know what I am doing and this will be my first child. Need a doula, any good recommendation?", category: "First Child", user: users.sample)
Post.create!(title: "Cravings - is loving natto normal?", content: "I hated it before and now it's my best friend - am I sick?", category: "Food and Nutrition", user: users.sample)
puts "Done creating posts"

# ------HOSPITALS------

puts "Heartlessly destroying all the hospitals"
Hospital.delete_all
puts "Hospitals destroyed. People are crying"

puts "Building new hospitals. This could take a while..."

hospital_image = "default_hospital_image.jpg"
locations = %w[Adachi Arakawa Bunkyo Chiyoda Chuo Edogawa Itabashi Katsushika Kita Koto Minato Meguro Nakano Nerima Ota Setagaya Shibuya Shinagawa Shinjuku Suginami Sumida Taito Toshima]
price_range = %w[$ $$ $$$ $$$$ $$$$$]
services = ["English Speaking", "Interpretation Services", "Private rooms", "Fertility treatments", "Normal deliveries", "Assistance with breastfeeding", "Epidural anesthesia", "In-vitro fertilization", "Embryo transfers", "After child-care", "Servants on hand 24/7", "Kangaroo care", "Post-partum depression assistance"]

hospital = Hospital.create!(name: "Tokyo JR General Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.jreast.co.jp/hospital/index.html/",
   description: "We provide advanced medical treatment in a variety of fields with warm hospitality.", average_rating: 0, phone_number: "03-0707-0707", default_image: hospital_image)
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Sanno Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.sannoclc.or.jp/hospital/english/",
    description: " A medical check-up center, a clinic for internal medicine, pediatrics, and orthopedics, and a rehabilitation center. We are dedicated to providing assistance to the Residents of Tokyo to live safely in their familiar environment. ", average_rating: 0, phone_number: "03-0612-0770", default_image: "sanno_hospital.jpg" )
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Aiiku Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.aiiku.net/international/",
    description: "In order to ensure the happiness and healthy growth of all mothers and babies, Aiiku Hospital provides high-quality medical care and supports a safe and comfortable pregnancy, labor/delivery, and child-rearing. ", average_rating: 0, phone_number: "03-4642-8846", default_image: "aiiku_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Tokyo Takanawa Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://takanawa.jcho.go.jp/",
  description: "The Department of Obstetrics and Gynecology provides medical care for all phases of a woman’s life from puberty to pregnancy, child birth, and menopause, with a main focus on reproduction. ", average_rating: 0, phone_number: "03-3324-1123", default_image: "takanawa_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Tokyo Midtown Clinic", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.tokyomidtown-mc.jp/en/",
  description: "In addition to a wide range of medical practices, the Tokyo Midtown Clinic boasts a special outpatient center, next-generation Health Screening Center and more. We provide total health support for our patients. ", average_rating: 0, phone_number: "03-5477-3426", default_image: "midtown_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Japan Red Cross Medical Center", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.med.jrc.or.jp/en/tabid/393/Default.aspx",
  description: " The baby and parents play a very important role of childbirth. As a baby- and mother-friendly hospital,
we attach great importance to perinatal safety, and we draw out maternal instinct at childbirth and
during childcare in order to help the baby live and grow healthily", average_rating: 0, phone_number: "03-6667-2243", default_image: "red_cross_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Jikei Hospital, Women's and Children's Center", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.hosp.jikei.ac.jp/boshiiryou/",
  description: " Midwives and nurses promote breastfeeding and will help you after delivery. Breastfeeding room with pumps also available.", average_rating: 0, phone_number: "03-1123-6688", default_image: "jikei_hospital.png")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Seibo Catholic Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.seibokai.or.jp/",
  description: "Allow for freedom to labor in different positions if no epidural. Birth partner can be in the room with you (but only husband, not other family members). Epidural available during certain hours and on week days.", average_rating: 0, phone_number: "03-6890-2200", default_image: "seibo_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Seijo Kinoshita Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://kinohosp.com/en/labor_and_delivery.html",
  description: " Dr. Kinoshita is known for being quite flexible with laboring positions. Modern, updated facility. Smaller hospital with a focus on maternal and pediatric care, among other things.", average_rating: 0, phone_number: "03-8899-4598", default_image: "seijo_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Nagai Mother's Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://www.nagai-cl.com/",
  description: "We give the option to voluntarily induce labor. On demand epidural, no reservation needed. Also same cost with or without the epidural. One person is allowed in the room with you during labor.", average_rating: 0, phone_number: "03-4422-5557", default_image: "nagai_hospital.jpg")
puts "created #{hospital.name}"

hospital = Hospital.create!(name: "Kanto Rozai Hospital", address:locations.sample, price_range: price_range.sample, services: services.sample(4).join(", "), webpage: "https://tokyoh.johas.go.jp/en/",
  description: "We encourage kangaroo care after birth and breastfeeding. English support may not be available – please enquire about availability in advance. We accept all major credit cards.", average_rating: 2.5, phone_number: "03-3456-9723", default_image: "kanto_hospital.jpg")
puts "created #{hospital.name}"

hospitals = Hospital.all

# ------REVIEWS------

7.times do
  #  --- should avoid the same user write a review on the same hospital 
  hospital = hospitals.sample
  user = users.sample 
  hospital_reviews = hospital.reviews.all
    
  while hospital_reviews.any? { |review| review.user === user } do 
    user = users.sample
  end
  # ----
  review = Review.create!(title: "Best hospital ever", comment: "The staff is really friendly and i felt like at home since day one", rating: rand(4...5), hospital: hospital, user: user)
  puts "create review for #{review.hospital.name} by #{review.user.username}"
end

4.times do
  #  --- should avoid the same user write a review on the same hospital 
  hospital = hospitals.sample
  user = users.sample 
  hospital_reviews = hospital.reviews.all
    
  while hospital_reviews.any? { |review| review.user === user } do 
    user = users.sample
  end
  # ----
  review = Review.create!(title: "Worst hospital ever", comment: "Facilities very dirty and long waiting time", rating: rand(1...2), hospital: hospital, user: user)
  puts "create review for #{review.hospital.name} by #{review.user.username}"
end

7.times do
  #  --- should avoid the same user write a review on the same hospital 
  hospital = hospitals.sample
  user = users.sample 
  hospital_reviews = hospital.reviews.all
    
  while hospital_reviews.any? { |review| review.user === user } do 
    user = users.sample
  end
  # ----
  review = Review.create!(title: "Good Cospa", comment: "I tried many hospitals around this area and this is so far the best!", rating: rand(3...5), hospital: hospital, user: user)
  puts "create review for #{review.hospital.name} by #{review.user.username}"
end

8.times do
  #  --- should avoid the same user write a review on the same hospital 
  hospital = hospitals.sample
  user = users.sample 
  hospital_reviews = hospital.reviews.all
    
  while hospital_reviews.any? { |review| review.user === user } do 
    user = users.sample
  end
  # ----
  review = Review.create!(title: "Nice facilities but ...", comment: "Facilities is nice and relatively new, however the waiting time is pretty long", rating: rand(3...4), hospital: hospital, user: user)
  puts "create review for #{review.hospital.name} by #{review.user.username}"
end

5.times do
  #  --- should avoid the same user write a review on the same hospital 
  hospital = hospitals.sample
  user = users.sample 
  hospital_reviews = hospital.reviews.all
    
  while hospital_reviews.any? { |review| review.user === user } do 
    user = users.sample
  end
  # ----
  review = Review.create!(title: "Awesome Doctor", comment: "The Doctor gets it. From his excellent treatment, curiosity, investigative mind and ability to connect, you know where you stand immediately and what next steps look like.", rating: rand(3...4), hospital: hospital, user: user)
  puts "create review for #{review.hospital.name} by #{review.user.username}"
end

5.times do
  #  --- should avoid the same user write a review on the same hospital 
  hospital = hospitals.sample
  user = users.sample 
  hospital_reviews = hospital.reviews.all
    
  while hospital_reviews.any? { |review| review.user === user } do 
    user = users.sample
  end
  # ----
  review = Review.create!(title: "Reliable and friendly staff", comment: "Always on time, compassionate, empathetic, easy to talk to and relates exceptionally well. Hands-down the most effective and efficient doctor visits I’ve had. Friendly, helpful staff as well.", rating: rand(3...5), hospital: hospital, user: user)
  puts "create review for #{review.hospital.name} by #{review.user.username}"
end

# ------ CALCULATING AVERAGE RATING ------

hospitals.each do |hospital|
  puts "calculating average rating for #{hospital.name}" 
  if hospital.reviews.count > 0
    total = hospital.reviews.sum {|r| r.rating }
    hospital.average_rating = (total / hospital.reviews.count).round(1)
    hospital.save!
  end
end


# create_table "reviews", force: :cascade do |t|
#   t.text "comment"
#   t.float "rating"
#   t.bigint "hospital_id", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "title"
#   t.bigint "user_id", null: false
#   t.index ["hospital_id"], name: "index_reviews_on_hospital_id"
#   t.index ["user_id"], name: "index_reviews_on_user_id"
# end

# ice_cream_image = URI.open("https://res.cloudinary.com/dsfih62k7/image/upload/v1692098565/ice_cream_amdk0l.webp")

# ice_cream = Event.new(status: 0, title: 'Free ice cream!', content: "grab a book", date: 'Tue, 15 Sept 2023', location: 'Yoyogi Park', time:'Sat, 01 Jan 2000 11:30:00.000000000 UTC +00:00', user: users.sample)

# ice_cream.photo.attach(io: ice_cream_image, filename: "ice_cream.webp", content_type: "image/webp")
# ice_cream.save!

# ------EVENTS------

yoga_image = Rails.root.join('app', 'assets', 'images', 'yoga.jpg')
book_image = Rails.root.join('app', 'assets', 'images', 'book.jpg')
diapers_image = Rails.root.join('app', 'assets', 'images', 'diapers.jpg')
ice_cream_image = Rails.root.join('app', 'assets', 'images', 'ice_cream.jpg')

giulia = User.find_by(username: 'Giulia')
jonny = User.find_by(username: 'Jonny')
simone = User.find_by(username: 'Simone')
tenny = User.find_by(username: 'Tenny')

yoga = Event.new(
  title: 'Come enjoy yoga together!',
  content: 'Yoga instructor of the day: Millie',
  date: Date.today,
  location: 'Yoyogi Park',
  time: Time.now,
  user: giulia
)
yoga.save!
yoga.photo.attach(io: File.open(yoga_image), filename: 'yoga.jpg', content_type: 'image/jpg')
puts 'Created Yoga Event'

book = Event.new(
  title: "Free children's books!",
  content: 'Grab a copy or two today',
  date: Date.today,
  location: '123 Park St.',
  time: Time.now,
  user: jonny
)
book.save!
book.photo.attach(io: File.open(book_image), filename: 'book.jpg', content_type: 'image/jpg')
puts 'Created Book event'

diapers = Event.new(
  title: 'Diapers Giveaway!',
  content: 'All sizes available!',
  date: Date.today,
  location: 'Yoyogi Park',
  time: Time.now,
  user: simone
)
diapers.save!
diapers.photo.attach(io: File.open(diapers_image), filename: 'diapers.jpg', content_type: 'image/jpg')
puts 'Created Diapers Event'

ice_cream = Event.new(
  title: 'Free ice cream!',
  content: 'Try 3 new flavors today: mango, cookies & cream, pistachio',
  date: Date.today,
  location: 'Yoyogi Park',
  time: Time.now,
  user: tenny
)
ice_cream.save!
ice_cream.photo.attach(io: File.open(ice_cream_image), filename: 'ice_cream.jpg', content_type: 'image/jpg')

puts 'Created Ice Cream Event'

puts 'Done! Thank you for your patience.'
puts "created 4 events"

# ------ARTICLES------

puts "Creating 4 Articles"

article = Article.create!( title: "How to stay healthy during pregnancy", content: "A healthy pregnancy is one of the best ways to promote a healthy birth. Early and regular prenatal care can help prevent complications and educate women about things they can do to have a healthy pregnancy. Here are a few areas to consider:", image: "https://magazine.medlineplus.gov/images/uploads/main_images/healthy-pregnancy.jpg", link:"https://magazine.medlineplus.gov/article/how-to-stay-healthy-during-pregnancy/")

puts "create #{article.title}"

article = Article.create!( title: "Regular Consumption of Low Levels of Caffeine During Pregnancy Linked to Slightly Shorter Children", content: "Exposure to caffeine in the womb, even low amounts, may lead to shorter height in childhood, suggests a new study from the National Institutes of Health (NIH). Children of women with low caffeine intake (including below the current recommendation of 200 milligrams [mg] per day) during pregnancy were slightly shorter than children born to women who consumed no caffeine while pregnant, and the gaps in height widened to 2 centimeters (cm) between ages 4 and 8 years old. ", image: "https://images.everydayhealth.com/images/consuming-caffeine-during-pregnancy-may-affect-childs-growth-1440x810.jpg?w=1110", link:"https://www.everydayhealth.com/pregnancy/consuming-caffeine-during-pregnancy-linked-to-shorter-children/")

puts "create #{article.title}"

article = Article.create!( title: "Is it Safe to Exercise During Pregnancy?", content: "Exercise is often viewed with a doubtful eye during pregnancy, but all the data available so far shows that it has a beneficial effect on a woman with a low-risk pregnancy.", image: "https://d2jx2rerrg6sh3.cloudfront.net/image-handler/ts/20200216115819/ri/673/picture/2020/2/%40shutterstock_115832737.jpg", link:"https://www.news-medical.net/health/Is-it-Safe-to-Exercise-During-Pregnancy.aspx")

puts "create #{article.title}"

article = Article.create!( title: "Pregnant women living in walkable communities more likely to experience favorable birth outcomes", content: "Pregnant women that live in walkable communities-;with more sidewalks, parks and walking paths-;not only engage in more physical activity but are also more likely to experience favorable birth outcomes, according to research from the University of New Hampshire.", image: "https://www.annandaleobgyn.com/wp-content/uploads/2019/11/shutterstock_290863655-768x512.jpg", link:"https://www.news-medical.net/news/20230817/Pregnant-women-living-in-walkable-communities-more-likely-to-experience-favorable-birth-outcomes.aspx")

puts "create #{article.title}"

puts "Done! Thank you for your patience."
