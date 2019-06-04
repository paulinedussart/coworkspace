
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
services = [ "High-speed wifi", "Heating", "Air conditioning", "Standing desks", "Beanbags",
"Ergonomic chairs", "Printer", "3D printer", "Scanner", "Photocopier", "Projector",
"Skype room", "Outdoor terrace", "Kitchen", "Wheelchair accessibility", "Free drinking water",
"Free coffee", "Free tea", "Community drinks", "Lounge", "Parking"]

services.each do |service|
  Service.create!(name: service)
end

puts 'Cleaning database...'
Reservation.destroy_all
Desk.destroy_all
User.destroy_all

puts 'Creating user...'
bob = User.create!(
  email: 'bob@example.com',
  password: 'password',
  first_name: 'Bob',
  last_name: 'Leponge'
)

jack = User.create!(
  email: 'jack@example.com',
  password: 'password',
  first_name: 'Jack',
  last_name: 'Sparow'
)

aude = User.create!(
  email: 'aude@gmail.com',
  password: 'password',
  first_name: 'Aude',
  last_name: 'Javel'
)

puts 'Creating desks...'


url = "https://images.unsplash.com/photo-1556745753-b2904692b3cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
hubud = Desk.new(name: "Hubud", full_address: "4 Rue Auguste Comte, 34000 Montpellier, France", price_per_day: 12, user: bob)
hubud.remote_photo_url = url
hubud.save

url = "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
chillhy = Desk.new(name: "Chill'Hi", full_address: "Aviador David Fuentes, Pudahuel, Región Metropolitana, Chili", price_per_day: 14, user: bob)
hubud.remote_photo_url = url
chillhy.save


url = "https://images.unsplash.com/photo-1498409785966-ab341407de6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
co_white_house_work = Desk.new(name: "Co White House Work", full_address: "1600 Pennsylvania Ave NW, Washington, DC 20500, États-Unis", price_per_day: 20, user: bob)
co_white_house_work.remote_photo_url = url
co_white_house_work.save

url = "https://coworker.imgix.net/photos/indonesia/bali/hub-bali-coworking-legian/1.jpg"
coworking_legian = Desk.new(name: "Coworking Legian", full_address: "999 S Logan St Suite 202, Denver, CO 80209, États-Unis", price_per_day: 15, user: jack)
coworking_legian.remote_photo_url = url
coworking_legian.save

url = "https://coworker.imgix.net/photos/indonesia/bali/finns-bali/4-1529055152.jpg"
finns_bali = Desk.new(name: "Finns Bali", full_address: "No.90X Jalan Monkey Forest, Ubud, Bali, Indonesia", price_per_day: 10, user: jack)
finns_bali.remote_photo_url = url
finns_bali.save

url = "https://coworker.imgix.net/photos/australia/sydney/servcorp-mlc-centre-sydney/3-1558052144.jpg"
mlc = Desk.new(name: "MLC", full_address: "29 Martin Place, Sydney, Australia", price_per_day: 25, user: aude)
mlc.remote_photo_url = url
mlc.save

url = "https://coworker.imgix.net/photos/australia/sydney/wework-martin-place/2.jpg"
we_work_martin_place = Desk.new(name: "We Work Martin Place", full_address: "5 Martin Place, Sydney, Australia", price_per_day: 16, user: aude)
we_work_martin_place.remote_photo_url = url
we_work_martin_place.save

url = "https://coworker.imgix.net/photos/australia/sydney/work-inc/1-1542083293.JPG"
work_in = Desk.new(name: "Work In", full_address: "6 Middlemiss Street, Sydney, Australia", price_per_day: 22, user: aude)
work_in.remote_photo_url = url
work_in.save

url = "https://coworker.imgix.net/photos/singapore/singapore/the-hive-new-bridge-road-singapore/1-1526289115.JPG"
the_hive = Desk.new(name: "The Hive", full_address: "59 New Bridge Road, Singapore, Singapore", price_per_day: 20, user: bob)
the_hive.remote_photo_url = url
the_hive.save

url = "https://coworker.imgix.net/photos/singapore/singapore/the-company/8-1557286237.jpg"
the_company = Desk.new(name: "The Company", full_address: "331 NORTH BRIDGE ROAD, Singapore, Singapore", price_per_day: 17, user: jack)
the_company.remote_photo_url = url
the_company.save

url = "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
the_mali = Desk.new(name: "The Mali", full_address: " Place de la CAN, ACI 2000, Bamako, Mali", price_per_day: 18, user: bob)
the_mali.remote_photo_url = url
the_mali.save

url = "https://images.unsplash.com/photo-1520881363902-a0ff4e722963?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
africa_work = Desk.new(name: "Africa Work", full_address: "Suite 303 The Point Mall, 76 Regent Rd, Sea Point, Cape Town, 8005, Afrique du Sud", price_per_day: 16, user: jack)
africa_work.remote_photo_url = url
africa_work.save

url = "https://images.unsplash.com/photo-1488901512066-cd403111aeb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
india_work = Desk.new(name: "India Work", full_address: "A-9, above Airtel office, near Kanha Restaurant, Queens Road, Vaishali Nagar, Jaipur, Rajasthan 302021, Inde", price_per_day: 15, user: aude)
india_work.remote_photo_url = url
india_work.save

url = "https://images.unsplash.com/photo-1495576775051-8af0d10f19b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
paris_work = Desk.new(name: "Paris Work", full_address: "30 Rue de la Chine, 75020 Paris", price_per_day: 10, user: aude)
paris_work.remote_photo_url = url
paris_work.save

url = "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
china_work = Desk.new(name: "China Work", full_address: "Chine, Shandong Sheng, Jinan Shi, 历城区遥墙镇机场路1号 邮政编码: 250107", price_per_day: 12, user: bob)
china_work.remote_photo_url = url
china_work.save

url = "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
russia_work = Desk.new(name: "Russia Work", full_address: "Red Square, Moskva, Russie, 109012", price_per_day: 26, user: bob)
russia_work.remote_photo_url = url
russia_work.save

url = "https://images.unsplash.com/photo-1488751045188-3c55bbf9a3fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
we_work_in_russia = Desk.new(name: "We Work In Russia", full_address: "Sergeya Makeeva Street, 15, Moskva, Russie, 123100", price_per_day: 18, user: bob)
we_work_in_russia.remote_photo_url = url
we_work_in_russia.save

url = "https://images.unsplash.com/photo-1475608980029-de8304bf6f6e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
o_greck = Desk.new(name: "O greck", full_address: "Αλμυρός 374 00, Grèce", price_per_day: 10, user: jack)
o_greck.remote_photo_url = url
o_greck.save

puts 'Creating reservations...'

Reservation.create!(
arrival_date: "2019-05-30",
departure_date: "2019-06-30",
status: "pending",
user: bob,
desk: finns_bali
)

Reservation.create!(
arrival_date: "2019-08-15",
departure_date: "2019-08-30",
status: "pending",
user: aude,
desk: russia_work
)

Reservation.create!(
arrival_date: "2019-04-30",
departure_date: "2019-07-30",
status: "pending",
user: bob,
desk: the_company
)

Reservation.create!(
arrival_date: "2019-06-31",
departure_date: "2019-07-30",
status: "pending",
user: bob,
desk: o_greck
)

Reservation.create!(
arrival_date: "2019-06-10",
departure_date: "2019-06-30",
status: "pending",
user: jack,
desk: work_in
)

