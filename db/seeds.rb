
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
  phone: '0693485738',
  password: 'password',
  first_name: 'Bob',
  last_name: 'Leponge'
)

jack = User.create!(
  email: 'jack@example.com',
  password: 'password',
  phone: '0678327438',
  first_name: 'Jack',
  last_name: 'Sparow'
)

aude = User.create!(
  email: 'aude@gmail.com',
  phone: '0638294710',
  password: 'password',
  first_name: 'Aude',
  last_name: 'Javel'
)
puts 'User Created!'

puts 'Creating desks...'

url = "https://images.unsplash.com/photo-1507537231947-f2ff14bc1554?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
hub_hoi_an_coworking = Space.new(name: "Hub Hoi An Coworking", address: "105 Lê Thánh Tông, Cẩm Sơn, Hội An, Quảng Nam, Vietnam", price_per_day: 12, user: aude, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.hubhoian.com')
hub_hoi_an_coworking.remote_photo_url = url
hub_hoi_an_coworking.save

url = "https://images.unsplash.com/photo-1507537231947-f2ff14bc1554?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
smart_point = Space.new(name: "SmArt.Point", address: "Baizakov St 280, Almaty 050040, Kazakhstan", price_per_day: 12, user: aude)
smart_point.remote_photo_url = url
smart_point.save

url = "https://images.unsplash.com/photo-1507296950187-9b0c7c88e7af?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
club_coworking = Space.new(name: "Club Coworking", address: "Jamiyan Gun Str. 9, Sukhbaatar District, 1st Khoroo ICC Tower, 13th Floor, Ulaanbaatar 14240, Mongolie", price_per_day: 12, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
club_coworking.remote_photo_url = url
club_coworking.save

url = "https://images.unsplash.com/photo-1464075208758-5623fb69e13b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
7AY_coworking = Space.new(name: "7AY Coworking", address: "Lot 15, 16 - Zone industrielle Takadoum، Rabat, Maroc", price_per_day: 12, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
7AY_coworking.remote_photo_url = url
7AY_coworking.save

url = "https://images.unsplash.com/photo-1535078035266-a0fa7d3b8f65?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
cowork_central = Space.new(name: "Cowork Central – Cais do Sodré", address: "Praça Duque da Terceira 24, 1200-161 Lisboa, Portugal", price_per_day: 12, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
cowork_central.remote_photo_url = url
cowork_central.save

url = "https://images.unsplash.com/photo-1468912637438-582f3f543cba?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
sun_and_co = Space.new(name: "Sun and Co.", address: "Carrer Príncep d'Astúries, 40, 03730 Xàbia, Alacant, Espagne", price_per_day: 12, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
sun_and_co.remote_photo_url = url
sun_and_co.save

url = "https://images.unsplash.com/photo-1501501753674-3cc5ea1bc1ff?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
e_commerce_park_of_sweden = Space.new(name: "E-Commerce Park of Sweden", address: "Vasatorpsvägen 1C, 254 57 Helsingborg, Suède", price_per_day: 12, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
e_commerce_park_of_sweden.remote_photo_url = url
e_commerce_park_of_sweden.save

url = "https://images.unsplash.com/photo-1461418559055-6f020c5a91e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
optimus_coworking_space = Space.new(name: "Optimus Coworking Space", address: "El Gomhouria St, Mit Khamis WA Kafr Al Mougi, Mansoura, Dakahlia Governorate, Égypte", price_per_day: 12, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
optimus_coworking_space.remote_photo_url = url
optimus_coworking_space.save

url = "https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
hub_southern_cross_melbourne = Space.new(name: "Hub Southern Cross - Melbourne", address: "696 Bourke St, Melbourne VIC 3000, Australie", price_per_day: 15, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
hub_southern_cross_melbourne.remote_photo_url = url
hub_southern_cross_melbourne.save

url = "https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
fishburners = Space.new(name: "Fishburners", address: "level 2/11 York St, Sydney NSW 2000, Australie", price_per_day: 15, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
fishburners.remote_photo_url = url
fishburners.save

url = "https://images.unsplash.com/photo-1554774853-719586f82d77?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
spacecubed = Space.new(name: "Spacecubed", address: "45 St Georges Terrace, Perth WA 6000, Australie", price_per_day: 15, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
spacecubed.remote_photo_url = url
spacecubed.save

url = "https://images.unsplash.com/photo-1556761175-4b46a572b786?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_emery = Space.new(name: "The Emery", address: "801 N Federal Hwy #212, Hallandale Beach, FL 33009, États-Unis", price_per_day: 15, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
the_emery.remote_photo_url = url
the_emery.save

url = "https://images.unsplash.com/photo-1484251065541-c9770829890f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
station_house = Space.new(name: "Station House", address: "260 1st Ave S, St. Petersburg, FL 33701, États-Unis", price_per_day: 15, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
station_house.remote_photo_url = url
station_house.save

url = "https://images.unsplash.com/photo-1439130490301-25e322d88054?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
talent_hub = Space.new(name: "Talent HUB", address: "Saint-Claude, Guadeloupe", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', price_per_day: 15, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'}, website: 'www.talenthub.fr/rdv')
talent_hub.remote_photo_url = url
talent_hub.save

url = "https://images.unsplash.com/photo-1526786220381-1d21eedf92bf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
up_and_space_martinique = Space.new(name: "Up and Space Martinique", address: "108 ZAC Les Coteaux, Sainte-Luce 97228, Martinique", description: 'New establishment, private access to the sea. Free deckchairs at your disposal and free coffee.', price_per_day: 15, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'}, website: 'http://upandspace.info/concours-fabrique-aviva/?fbclid=IwAR2X1cD3hhugDgd8mO85Fo9l_5jWfo2eN_oopaH-YkpVLATDe-0jf9SlPXc')
up_and_space_martinique.remote_photo_url = url
up_and_space_martinique.save

url = "https://images.unsplash.com/photo-1526786220381-1d21eedf92bf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
le_spot = Space.new(name: "Le Spot", address: "Rue Ferdinand Forest, Baie Mahault, Guadeloupe", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', price_per_day: 15, phone: '0693847569', user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'}, website: 'http://guadeloupe-coworking.com')
le_spot.remote_photo_url = url
le_spot.save

url = "https://images.unsplash.com/photo-1460627390041-532a28402358?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
la_mochila_cowork = Space.new(name: "La Mochila Cowork", address: "Calle Arzobispo Nouel 158, Santo Domingo 10210, République dominicaine", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693847969', price_per_day: 15, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'}, website: 'https://www.lamochila-rd.com')
la_mochila_cowork.remote_photo_url = url
la_mochila_cowork.save

url = "https://images.unsplash.com/photo-1460627390041-532a28402358?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
banj = Space.new(name: "Banj", address: "514, Route de Delmas, Delmas 66, Port-au-Prince Delmas HT 6120, Route de Delmas, Port-au-Prince, Haïti", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693347569', price_per_day: 10, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'}, website: 'www.banjht.com')
banj.remote_photo_url = url
banj.save

url = "https://images.unsplash.com/photo-1452690700222-8a2a1a109f4c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_hub = Space.new(name: "The Hub", address: "34 Lady Musgrave Rd, Kingston, Jamaïque", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693347569', price_per_day: 10, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'}, website: 'http://www.hubcoworking.net')
the_hub.remote_photo_url = url
the_hub.save

url = "https://images.unsplash.com/photo-1556745753-b2904692b3cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
mtp = Space.new(name: "MTP", address: "4 Rue Auguste Comte, 34000 Montpellier, France", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693847519', price_per_day: 12, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
mtp.remote_photo_url = url
mtp.save

url = "https://images.unsplash.com/photo-1461704946971-9e5d8b7938f0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
rent24 = Space.new(name: "Rent24", address: "Potsdamer Straße 182/4.og, 10783 Berlin, Allemagne", price_per_day: 10, user: bob, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
rent24.remote_photo_url = url
rent24.save

url = "https://images.unsplash.com/photo-1461701204332-2aa3db5b20c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1000&q=80"
polo = Space.new(name: "Polo", address: "Plac Konesera 10, 03-736 Warszawa, Pologne", price_per_day: 10, user: bob, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
polo.remote_photo_url = url
polo.save

url = "https://images.unsplash.com/photo-1556745753-b2904692b3cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
cowork_in_montpellier = Space.new(name: "Cowork'in Montpellier", address: "4 Rue Auguste Comte, 34000 Montpellier", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0643847569', price_per_day: 12, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
cowork_in_montpellier.remote_photo_url = url
cowork_in_montpellier.save

url = "https://images.unsplash.com/photo-1461988625982-7e46a099bf4f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_island = Space.new(name: "The Island", address: "19 Avenue de Toulouse, 34070 Montpellier", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', price_per_day: 11, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
the_island.remote_photo_url = url
the_island.save

url = "https://images.unsplash.com/photo-1461782296610-c552d61b149a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
guaja_café_coworking = Space.new(name: "GUAJA Café & Coworking", address: "Av. Afonso Pena, 2881 - Funcionários, Belo Horizonte - MG, 30130-011, Brésil", price_per_day: 12, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
guaja_café_coworking.remote_photo_url = url
guaja_café_coworking.save

url = "https://images.unsplash.com/photo-1511549945984-b2b193cb87e6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
rather_coworking = Space.new(name: "Rather Coworking", address: "R. José Maia Gomes, 258 - Jatiúca, Maceió - AL, 57036-240, Brésil", price_per_day: 12, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
rather_coworking.remote_photo_url = url
rather_coworking.save

url = "https://images.unsplash.com/photo-1467320424268-f91a16cf7c77?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_lab_miami = Space.new(name: "The Lab Miami", address: "400 NW 26th St, Miami, FL 33127, États-Unis", price_per_day: 12, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
the_lab_miami.remote_photo_url = url
the_lab_miami.save

url = "https://images.unsplash.com/photo-1505624198937-c704aff72608?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
we_work = Space.new(name: "We Work", address: "US Custom House, 220 NW 8th Ave, Portland, OR 97209, États-Unis", price_per_day: 12, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
we_work.remote_photo_url = url
we_work.save

url = "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
chillhy = Space.new(name: "Chill'Hi", address: "Aviador David Fuentes, Pudahuel, Región Metropolitana, Chili", price_per_day: 14, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
hubud.remote_photo_url = url
chillhy.save


url = "https://images.unsplash.com/photo-1498409785966-ab341407de6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
co_white_house_work = Space.new(name: "Co White House Work", address: "1600 Pennsylvania Ave NW, Washington, DC 20500, États-Unis", price_per_day: 20, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
co_white_house_work.remote_photo_url = url
co_white_house_work.save

url = "https://coworker.imgix.net/photos/indonesia/bali/hub-bali-coworking-legian/1.jpg"
coworking_legian = Space.new(name: "Coworking Legian", address: "999 S Logan St Suite 202, Denver, CO 80209, États-Unis", price_per_day: 15, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
coworking_legian.remote_photo_url = url
coworking_legian.save

url = "https://coworker.imgix.net/photos/indonesia/bali/finns-bali/4-1529055152.jpg"
finns_bali = Space.new(name: "Finns Bali", address: "No.90X Jalan Monkey Forest, Ubud, Bali, Indonesia", price_per_day: 10, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
finns_bali.remote_photo_url = url
finns_bali.save

url = "https://coworker.imgix.net/photos/australia/sydney/servcorp-mlc-centre-sydney/3-1558052144.jpg"
mlc = Space.new(name: "MLC", address: "29 Martin Place, Sydney, Australia", price_per_day: 25, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
mlc.remote_photo_url = url
mlc.save

url = "https://coworker.imgix.net/photos/australia/sydney/wework-martin-place/2.jpg"
we_work_martin_place = Space.new(name: "We Work Martin Place", address: "5 Martin Place, Sydney, Australia", price_per_day: 16, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
we_work_martin_place.remote_photo_url = url
we_work_martin_place.save

url = "https://coworker.imgix.net/photos/australia/sydney/work-inc/1-1542083293.JPG"
work_in = Space.new(name: "Work In", address: "6 Middlemiss Street, Sydney, Australia", price_per_day: 22, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
work_in.remote_photo_url = url
work_in.save

url = "https://coworker.imgix.net/photos/singapore/singapore/the-hive-new-bridge-road-singapore/1-1526289115.JPG"
the_hive = Space.new(name: "The Hive", address: "59 New Bridge Road, Singapore, Singapore", price_per_day: 20, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
the_hive.remote_photo_url = url
the_hive.save

url = "https://coworker.imgix.net/photos/singapore/singapore/the-company/8-1557286237.jpg"
the_company = Space.new(name: "The Company", address: "331 NORTH BRIDGE ROAD, Singapore, Singapore", price_per_day: 17, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
the_company.remote_photo_url = url
the_company.save

url = "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
the_mali = Space.new(name: "The Mali", address: " Place de la CAN, ACI 2000, Bamako, Mali", price_per_day: 18, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
the_mali.remote_photo_url = url
the_mali.save

url = "https://images.unsplash.com/photo-1431540015161-0bf868a2d407?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
maliwork = Space.new(name: "MaliWork", address: "Bamako, Mali", price_per_day: 18, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
maliwork.remote_photo_url = url
maliwork.save

url = "https://images.unsplash.com/photo-1520881363902-a0ff4e722963?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
africa_work = Space.new(name: "Africa Work", address: "Suite 303 The Point Mall, 76 Regent Rd, Sea Point, Cape Town, 8005, Afrique du Sud", price_per_day: 16, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
africa_work.remote_photo_url = url
africa_work.save

url = "https://images.unsplash.com/photo-1440492248262-6895f9da82fc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
africowork = Space.new(name: "Africowork", address: "1, King Shaka Ave, Point, Durban, 4001, Afrique du Sud", price_per_day: 14, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
africowork.remote_photo_url = url
africowork.save

url = "https://images.unsplash.com/photo-1522683280249-025c6e03d311?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
africa_south = Space.new(name: "Africa South", address: "Point Close, Eastford, Knysna, 6571, Afrique du Sud", price_per_day: 14, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
africa_south.remote_photo_url = url
africa_south.save

url = "https://images.unsplash.com/photo-1488901512066-cd403111aeb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
india_work = Space.new(name: "India Work", address: "A-9, above Airtel office, near Kanha Restaurant, Queens Road, Vaishali Nagar, Jaipur, Rajasthan 302021, Inde", price_per_day: 15, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
india_work.remote_photo_url = url
india_work.save

url = "https://images.unsplash.com/photo-1488901512066-cd403111aeb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
taj_work = Space.new(name: "Taj Work", address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, Inde", price_per_day: 15, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
taj_work.remote_photo_url = url
taj_work.save

url = "https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
fort_rouge = Space.new(name: "Fort Rouge", address: "Netaji Subhash Marg, Lal Qila, Chandni Chowk, New Delhi, Delhi 110006, Inde", price_per_day: 18, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
fort_rouge.remote_photo_url = url
fort_rouge.save

url = "https://images.unsplash.com/photo-1495576775051-8af0d10f19b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
paris_work = Space.new(name: "Paris Work", address: "30 Rue de la Chine, 75020 Paris", price_per_day: 10, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
paris_work.remote_photo_url = url
paris_work.save

url = "https://images.unsplash.com/photo-1554902843-260acd0993f8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
le_loft = Space.new(name: "Le Loft", address: "33 Rue de Robien, 35000 Rennes", price_per_day: 10, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
le_loft.remote_photo_url = url
le_loft.save

url = "https://images.unsplash.com/photo-1429681601148-75510b2cef43?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
etincelle_cowoking = Space.new(name: "Etincelle Cowoking", address: " 2 Rue d'Austerlitz, 31000 Toulouse", price_per_day: 10, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
etincelle_cowoking.remote_photo_url = url
etincelle_cowoking.save

url = "https://images.unsplash.com/photo-1497366754035-f200968a6e72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
coworkimmo = Space.new(name: "Coworkimmo", address: " 23 Rue Edmond Michelet, 33000 Bordeaux", price_per_day: 10, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
coworkimmo.remote_photo_url = url
coworkimmo.save

url = "https://images.unsplash.com/photo-1497366858526-0766cadbe8fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
la_ruche = Space.new(name: "La Ruche", address: "66 Rue Abbé de l'Épée, 33000 Bordeaux", price_per_day: 10, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
la_ruche.remote_photo_url = url
la_ruche.save

url = "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
china_work = Space.new(name: "China Work", address: "Chine, Shandong Sheng, Jinan Shi, 历城区遥墙镇机场路1号 邮政编码: 250107", price_per_day: 12, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
china_work.remote_photo_url = url
china_work.save

url = "https://images.unsplash.com/photo-1554200876-2b37eac20913?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
chen_working = Space.new(name: "Chen Working", address: "District de Rongcheng, Jieyang, Chine, 515645", price_per_day: 12, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
chen_working.remote_photo_url = url
chen_working.save

url = "https://images.unsplash.com/photo-1530099486328-e021101a494a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
tchong_work = Space.new(name: "Tchong Work", address: "1 Airport Rd, Nanming Qu, Guiyang Shi, Guizhou Sheng, Chine, 550012", price_per_day: 12, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
tchong_work.remote_photo_url = url
tchong_work.save

url = "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
russia_work = Space.new(name: "Russia Work", address: "Red Square, Moskva, Russie, 109012", price_per_day: 26, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
russia_work.remote_photo_url = url
russia_work.save

url = "https://images.unsplash.com/photo-1488751045188-3c55bbf9a3fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
we_work_in_russia = Space.new(name: "We Work In Russia", address: "Sergeya Makeeva Street, 15, Moskva, Russie, 123100", price_per_day: 18, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
we_work_in_russia.remote_photo_url = url
we_work_in_russia.save

url = "https://images.unsplash.com/photo-1456406644174-8ddd4cd52a06?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
coldn_work = Space.new(name: "Cold'n work", address: "SKhanty-Mansiïsk, Ханты-Мансийский Автономный округ - Югра Аутономус Область, Russie", price_per_day: 18, user: bob, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
coldn_work.remote_photo_url = url
coldn_work.save

url = "https://images.unsplash.com/photo-1475608980029-de8304bf6f6e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
o_greck = Space.new(name: "O greck", address: "Αλμυρός 374 00, Grèce", price_per_day: 10, user: jack, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
o_greck.remote_photo_url = url
o_greck.save

url = "https://images.unsplash.com/photo-1518604100146-5d90d05f1b58?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
greck_work = Space.new(name: "Greck'Work", address: "Heraklion 716 01, Grèce", price_per_day: 15, user: aude, opening_hours: {'Mon-Fri' : '8AMP-8PM', 'Sat' : '9AM-6PM', 'Sun' : '10AM-1PM'})
greck_work.remote_photo_url = url
greck_work.save

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

