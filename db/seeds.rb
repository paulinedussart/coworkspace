# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts 'Cleaning database...'
Reservation.destroy_all
Owner.destroy_all
Space.destroy_all
Service.destroy_all
Desk.destroy_all
Message.destroy_all
User.destroy_all
ChatRoom.destroy_all




# SEED SPACE_SERVICES
puts 'Creating SERVICES...'
services = [ "High-speed wifi", "Heating", "Air conditioning", "Standing desks", "Beanbags",
"Ergonomic chairs", "Printer", "3D printer", "Scanner", "Photocopier", "Projector",
"Skype room", "Outdoor terrace", "Kitchen", "Wheelchair accessibility", "Free drinking water",
"Free coffee", "Free tea", "Community drinks", "Lounge", "Parking"]

services.each do |service|
  Service.create!(name: service)
end
puts ' --> SERVICES created !'




# SEED OWNERS
puts 'Creating OWNERS...'

vr_lab = Owner.create!(
  email: 'vr-lab@example.com',
  phone: '0693485738',
  password: 'password',
  name: 'VR Lab',
  siret: '802 954 785 00028'
)

havana_beach_coworking = Owner.create!(
  email: 'hb-coworking@example.com',
  password: 'password',
  phone: '0678327438',
  name: "Havana Beach",
  siret: '456 954 345 00038'
)

green_advisor = Owner.create!(
  email: 'green-advisor@gmail.com',
  phone: '0638294710',
  password: 'password',
  name: "Green Advisor",
  siret: '493 234 654 00038'
)
puts ' --> OWNERS created!'





# SEED USERS
puts 'Creating USERS...'
pauline = User.create!(
  email: 'pau@example.com',
  password: 'password',
  phone: '0678327438',
  first_name: "Pauline",
  last_name: "Dussart",
  avatar: 'https://avatars1.githubusercontent.com/u/43919015?v=4'
)
aure = User.create!(
  email: 'aure@gmail.com',
  phone: '0638294710',
  password: 'password',
  first_name: "Aurelie",
  last_name: "Gimet",
  avatar:'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/gqon2jj9cj7tss7gpvzb.jpg'

)
lulu = User.create!(
  email: 'lulu@gmail.com',
  phone: '0638294730',
  password: 'password',
  first_name: "Ludivine",
  last_name: "Robin",
  avatar: 'https://avatars2.githubusercontent.com/u/45851146?v=4'
)
popo = User.create!(
  email: 'popo@gmail.com',
  phone: '0638294740',
  password: 'password',
  first_name: "Pauline",
  last_name: "Florens",
  avatar: 'https://avatars0.githubusercontent.com/u/48763705?v=4'
)
marc = User.create!(
  email: 'marc@gmail.com',
  phone: '0638294750',
  password: 'password',
  first_name: "Marc",
  last_name: "Dubois"
)
pierre = User.create!(
  email: 'pierre@gmail.com',
  phone: '0638294760',
  password: 'password',
  first_name: "Pierre",
  last_name: "De Latour"
)
puts ' --> USERS created!'


# SEED DESKS
puts 'Creating SPACES...'
# SEEDS I WILL USE FOR DEMODAY !!!!!!!

url = "https://coworker.imgix.net/photos/australia/sydney/servcorp-mlc-centre-sydney/3-1558052144.jpg"
mlc = Space.new(name: "MCL", address: "369 Pittwater Road, North Manly, Sydney, Australia", description: "MCL is a creative workspace with an established working environment located just 2km from the Sydney CBD. Featuring great location accessibility, efficient workspaces and a thriving community, this is where coworking works.
Professional shared workspace meets flexible memberships and functional facilities, MCL offers designer desks, tables, sofas and super fast wifi. There are also informal meeting areas, barista coffee, access to all Spaces locations worldwide and additional services.
Work better together in the Spaces Surry Hills environment where their community supports one another in many ways through exchanging valuable insight and feedback, idea sharing as well as collaborative efforts intended for professional development.",
owner: vr_lab, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.mcl-sydney.com')
mlc.remote_photo_url = url
mlc.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: mlc
) end

url = "https://images.unsplash.com/photo-1515965885361-f1e0095517ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
manly_house_studio = Space.new(name: "Manly House Studio", address: "17-19 Bridge Street, Sydney, Australia", description: "Manly House Studio is a series of co-working spaces in a 200m2 open plan New York loft style warehouse in North Manly on Sydney's Northern Beaches. Situated just out of town, 5 mins from 2 beaches, it was founded to provide people
nvolved with the Creative Industries an inspiring place to work, connect and share knowledge with each other.",
owner: vr_lab, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.manly_house_studio.com')
manly_house_studio.remote_photo_url = url
manly_house_studio.save

2.times do
Desk.create!(
   price_per_day: 15,
   space: manly_house_studio
  )
end

url = "http://fairlightgardens.com.au/wp-content/uploads/2015/06/Manly-Beach.jpg"
havana_beach = Space.new(name: "Havana Beach", address: "14 South Steyne, Manly, Sydney, Australia", description: "Havana Beach turns the restaurant that is normally closed during the day into a unique and affordable co-working space. Located in Manly, mere steps away from the beach sits Havana Beach.
Light and color fill this eternally sunny space as people rest their backs on plush scarlet and lime patterned cushions and listen to the ocean as they sip on hot coffee made by the in-house barista. The exposed brick walls and light bulbs, murals and vintage posters are reminiscent of the warmth and easy
vibrancy so renowned in Cuban culture.", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.havana_beach.com')
havana_beach.remote_photo_url = url
havana_beach.save

puts 'Creating DESKS for Havana Beach...'
# Desk for Havana Beach
desk1 = Desk.create!(
  price_per_day: 15,
  space: havana_beach
  )

desk2 = Desk.create!(
  price_per_day: 15,
  space: havana_beach
  )

desk3 = Desk.create!(
  price_per_day: 15,
  space: havana_beach
  )
puts ' --> DESKS created for Havana Beach !'

puts 'Creating RESERVATIONS for Havana Beach...'
# Reservation for Havana Beach
reservation1 = Reservation.create!(
  arrival_date: Date.today + 1.week,
  departure_date: Date.today + 2.week,
  status: "ACCEPTED",
  user: pauline,
  desk: desk1
  )
reservation2 = Reservation.create!(
  arrival_date: Date.today + 3.week,
  departure_date: Date.today + 4.week,
  status: "PENDING",
  user: pauline,
  desk: desk1
  )
reservation3 = Reservation.create!(
  arrival_date: Date.today + 4.week,
  departure_date: Date.today + 5.week,
  status: "REFUSED",
  user: pauline,
  desk: desk1
  )

puts ' --> MESSAGES created for Havana Beach'


puts ' --> creating REVIEWS for Havana Beach'
review1 = Review.create!(
  content: "From the day we moved in to Havana Beach, it has met all our needs professionally and quickly. The environment is perfect for a small and rapidly growing business, with so much space to accommodate small client meetings and larger marketing or networking events.",
  rating: 5,
  user: aure,
  space: havana_beach
  )

review2 = Review.create!(
  content: "Work Inc has the fastest internet we could find, mixed with the coolest warehouse vibe, strong community feel and reasonable pricing.",
  rating: 4,
  user: lulu,
  space: havana_beach
)

review3 = Review.create!(
  content: "Great working environment with a super dedicated team ensuring everything runs smoothly.",
  rating: 5,
  user: pierre,
  space: havana_beach
  )

review4 = Review.create!(
  content: "Great location, creative design, vibrant community and friendly staff! I’ve been working at Work Inc for months and seeing how the team is making continuous improvement where things are already good enough. Thanks team! Highly recommended.",
  rating: 5,
  user: marc,
  space: havana_beach
  )
puts ' --> REVIEWS created for Havana Beach'



url = "https://coworker.imgix.net/photos/australia/sydney/wework-martin-place/2.jpg"
we_work_martin_place = Space.new(name: "We Work Martin Place", address: "5 Martin Place, Sydney, Australia", description: "We Work is the worlds most unique coworking space, tucked within the foundations of the iconic Sydney Harbour Bridge at Lavender Bay. This heritage space has been reimagined to cultivate a community of driven start-ups and businesses created by entrepreneurs for entrepreneurs.
", owner: green_advisor, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.wework.com')
we_work_martin_place.remote_photo_url = url
we_work_martin_place.save

url = "https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
hub_southern_cross_melbourne = Space.new(name: "Hub Southern Cross - Melbourne", address: "696 Bourke St, Melbourne VIC 3000, Australia", description:"Coworking space and serviced offices in a stunning heritage listed building!
Check out our North Strathfield space for Serviced Offices for every business type and size. Our offices are there to help you start your business off or seat all 30 of your employees! Doesn't matter what size or how many you need we have the offices to accomodate you and your business.
Join up month-to-month with no lock in contracts just an awesome environment with loads of people waiting to meet you! ",
owner: green_advisor, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.Hub-Southern-Cross.com')
hub_southern_cross_melbourne.remote_photo_url = url
hub_southern_cross_melbourne.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: hub_southern_cross_melbourne
) end

url = "https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
fishburners = Space.new(name: "Fishburners", address: "10 Middlemiss Street, Sydney, Australia", description:"Working alone can be a bore sometimes. It might even be a routine that’s suddenly unproductive for you anymore. Or perhaps the bustling cafe is just not for you to spend long working hours in? At Fishburners, this is why they’ve built a coworking space for such purposes of working together instead of alone. Break your normal working style and try coworking at their collaborative space instead!",
owner: green_advisor, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.Fishburners.com')
fishburners.remote_photo_url = url
fishburners.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: fishburners
) end

puts ' --> creating REVIEWS for Fishburners'

review5 = Review.create!(
  content: "Much more comfortable and convenient than working from home, and MUCH quieter! Awesome facilities with every creature comfort imaginable (even a slippery-slide!).",
  rating: 4,
  user: aure,
  space: spacecubed,
  )

review6 = Review.create!(
  content: "It's really quiet, really friendly and a great place to get work done. Location couldn't be better, easy access to the train, heaps of parking and heaps of restaurants around.",
  rating: 4,
  user: lulu,
  space: spacecubed,
)

review7 = Review.create!(
  content: "Wow! Love it here. I escape to get focused work done without the other distractions. I love the buzz of productivity and the friendliness of everyone.",
  rating: 5,
  user: pierre,
  space: spacecubed,
)

puts ' --> REVIEWS created for Fishburners'



url = "https://images.unsplash.com/photo-1554774853-719586f82d77?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
spacecubed = Space.new(name: "Spacecubed", address: "45 St Georges Terrace, Perth WA 6000, Australia", description:"An impressive space for your next business meeting.
berrins is a boutique co-working space in the heart of Manly, right across the road from Manly Wharf.
With mid-century modern furniture, quality light fittings, high ceilings, abundance of natural light and Manly’s best barista just next door – it’s the perfect destination for your next business meeting.",
owner: vr_lab, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.Spacecubed.com')
spacecubed.remote_photo_url = url
spacecubed.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: spacecubed
) end


url = "https://coworker.imgix.net/photos/australia/sydney/work-inc/1-1542083293.JPG"
work_in = Space.new(name: "CoWork In", address: "36 Sydney Road, Manly, Sydney, Australia", description: "Work In is the biggest coworking space in the southern area of Sydney. In their words, “Work for yourself, not by yourself” so if you ever feel
the need to escape the lonesome confined spaces of your cubicle or your comfy sofa at home, head on over to Inspire Cowork to get your work mojo going while being surrounded by motivated like minded individuals.",
owner: green_advisor, opening_hours: {'Mon-Fri': '8AM-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.CoWorkin.com')
work_in.remote_photo_url = url
work_in.save

puts 'Creating DESKS for Work In ...'
# Desk for Work In
desk100 = Desk.create!(
  price_per_day: 18,
  space: work_in
  )

desk200 = Desk.create!(
  price_per_day: 18,
  space: work_in
  )

desk300 = Desk.create!(
  price_per_day: 18,
  space: work_in
  )
puts ' --> DESKS created for Work In'



puts ' --> creating REVIEWS for Work In'
review8 = Review.create!(
  content: "Fantastic location close to both North Sydney and Milsons Point stations. Great facilities and the staff are always on hand and very helpful. A very integrated community feel between companies. An all round great operation!",
  rating: 4,
  user: aure,
  space: work_in
  )

review9 = Review.create!(
  content: "When I tell people I work in this space they get the serious case of the “jeals”. Everything you could possibly need in a workspace (and more) is catered for here.",
  rating: 4,
  user: lulu,
  space: work_in,
)

review10 = Review.create!(
  content: "Well located site , right in the heart of Sydney, near the one of most popular train station in town. Comfortable offices across different industries, which make colleagues interesting people to talk.",
  rating: 5,
  user: pierre,
  space: work_in,
)

review11 = Review.create!(
  content: "Work in has amazing facilities, it is a fantastic welcoming place to work. The location is great too.",
  rating: 4,
  user: marc,
  space: work_in,
)
puts ' --> REVIEWS created for Work In'


# SEEDS AUSTRALIA END






# EUROPE
    # FRANCE
url = "https://images.unsplash.com/photo-1556745753-b2904692b3cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
cowork_in_montpellier = Space.new(name: "Cowork'in Montpellier", address: "4 Rue Auguste Comte, 34000 Montpellier, France", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0643847569', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
cowork_in_montpellier.remote_photo_url = url
cowork_in_montpellier.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: cowork_in_montpellier
) end

url = "https://images.unsplash.com/photo-1461988625982-7e46a099bf4f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_island = Space.new(name: "The Island", address: "19 Avenue de Toulouse, 34070 Montpellier, France", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', owner: green_advisor, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
the_island.remote_photo_url = url
the_island.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: the_island
) end

url = "https://images.unsplash.com/photo-1554902843-260acd0993f8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
le_loft = Space.new(name: "Le Loft", address: "33 Rue de Robien, 35000 Rennes, France", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
le_loft.remote_photo_url = url
le_loft.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: le_loft
) end

url = "https://images.unsplash.com/photo-1429681601148-75510b2cef43?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
etincelle_cowoking = Space.new(name: "Etincelle Cowoking", address: "2 Rue d'Austerlitz, 31000 Toulouse, France", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
etincelle_cowoking.remote_photo_url = url
etincelle_cowoking.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: etincelle_cowoking
) end

url = "https://images.unsplash.com/photo-1497366754035-f200968a6e72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
coworkimmo = Space.new(name: "Coworkimmo", address: "23 Rue Edmond Michelet, 33000 Bordeaux, France", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
coworkimmo.remote_photo_url = url
coworkimmo.save

url = "https://images.unsplash.com/photo-1497366858526-0766cadbe8fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
la_ruche = Space.new(name: "La Ruche", address: "66 Rue Abbé de l'Épée, 33000 Bordeaux, France", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
la_ruche.remote_photo_url = url
la_ruche.save

url = "https://images.unsplash.com/photo-1556745753-b2904692b3cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
mtp = Space.new(name: "MTP", address: "4 Rue Auguste Comte, 34000 Montpellier, France", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693847519', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
mtp.remote_photo_url = url
mtp.save


    # AUTRES
url = "https://images.unsplash.com/photo-1535078035266-a0fa7d3b8f65?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
cowork_central = Space.new(name: "Cowork Central – Cais do Sodré", address: "Av. da República 46, Lisboa, Portugal", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
cowork_central.remote_photo_url = url
cowork_central.save

url = "https://images.unsplash.com/photo-1468912637438-582f3f543cba?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
sun_and_co = Space.new(name: "Sun and Co.", address: "Calle de Hermosilla, 2, 28001 Madrid, Espagne", owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
sun_and_co.remote_photo_url = url
sun_and_co.save

url = "https://images.unsplash.com/photo-1501501753674-3cc5ea1bc1ff?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
e_commerce_park_of_sweden = Space.new(name: "E-Commerce Park of Sweden", address: "Vasatorpsvägen 1C, 254 57 Helsingborg, Suède", owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
e_commerce_park_of_sweden.remote_photo_url = url
e_commerce_park_of_sweden.save

url = "https://images.unsplash.com/photo-1461704946971-9e5d8b7938f0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
rent24 = Space.new(name: "Rent24", address: "Olpe 2, 44135 Dortmund, Allemagne", owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
rent24.remote_photo_url = url
rent24.save

url = "https://images.unsplash.com/photo-1461701204332-2aa3db5b20c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1000&q=80"
polo = Space.new(name: "Polo", address: "Pory 76, 02-757 Warszawa, Pologne", owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
polo.remote_photo_url = url
polo.save






# AMERIQUE
    # USA
url = "https://images.unsplash.com/photo-1556761175-4b46a572b786?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_emery = Space.new(name: "The Emery", address: "111 W Fortune St, Tampa, FL 33602, États-Unis", owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
the_emery.remote_photo_url = url
the_emery.save

url = "https://images.unsplash.com/photo-1484251065541-c9770829890f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
station_house = Space.new(name: "Station House", address: "US-380, San Antonio, NM 87832, États-Unis", owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
station_house.remote_photo_url = url
station_house.save

url = "https://images.unsplash.com/photo-1498409785966-ab341407de6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
co_white_house_work = Space.new(name: "Co White House Work", address: "2720 N MacArthur Dr, Alexandria, LA 71303, États-Unis", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
co_white_house_work.remote_photo_url = url
co_white_house_work.save

url = "https://coworker.imgix.net/photos/indonesia/bali/hub-bali-coworking-legian/1.jpg"
coworking_legian = Space.new(name: "Coworking Legian", address: "1409 W Hwy St, Iowa Park, TX 76367, États-Unis", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
coworking_legian.remote_photo_url = url
coworking_legian.save

url = "https://images.unsplash.com/photo-1467320424268-f91a16cf7c77?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_lab_miami = Space.new(name: "The Lab Miami", address: "3600 Suncadia Trail, Cle Elum, WA 98922, États-Unis", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
the_lab_miami.remote_photo_url = url
the_lab_miami.save

url = "https://images.unsplash.com/photo-1445865272827-4894eb9d48de?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
we_work = Space.new(name: "We Work", address: "10068 W South Highway 69, Mayer, AZ 86333, États-Unis", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
we_work.remote_photo_url = url
we_work.save


    # AUTRE
url = "https://images.unsplash.com/photo-1461782296610-c552d61b149a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
guaja_café_coworking = Space.new(name: "GUAJA Café & Coworking", address: " R Fradique Coutinho, 160, Sao Paulo, Brazil", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
guaja_café_coworking.remote_photo_url = url
guaja_café_coworking.save

url = "https://images.unsplash.com/photo-1511549945984-b2b193cb87e6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
rather_coworking = Space.new(name: "Rather Coworking", address: "Av. Caxangá, 3210 - Iputinga, Recife - PE, 50731-000, Brésil", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
rather_coworking.remote_photo_url = url
rather_coworking.save

url = "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
chillhy = Space.new(name: "Chill'Hi", address: "Aviador David Fuentes, Pudahuel, Región Metropolitana, Chili", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
chillhy.remote_photo_url = url
chillhy.save






# MAGREB
url = "https://images.unsplash.com/photo-1507537231947-f2ff14bc1554?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
smart_point = Space.new(name: "SmArt.Point", address: "Baizakov St 280, Almaty 050040, Kazakhstan", owner: green_advisor)
smart_point.remote_photo_url = url
smart_point.save

url = "https://images.unsplash.com/photo-1464075208758-5623fb69e13b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
ay7_coworking = Space.new(name: "7AY Coworking", address: "23, Rue Chellah - Place Mellilia - Hassan، Rabat, Maroc", owner: havana_beach_coworking, opening_hours: {"Mon-Fri": "8AMP-8PM", "Sat": "9AM-6PM", "Sun": "10AM-1PM"})
ay7_coworking.remote_photo_url = url
ay7_coworking.save

url = "https://images.unsplash.com/photo-1439130490301-25e322d88054?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
talent_hub = Space.new(name: "Talent HUB", address: "3 Rue Campenon BASSE-TERRE, Basse-Terre 97100, Guadeloupe", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'www.talenthub.fr/rdv')
talent_hub.remote_photo_url = url
talent_hub.save

url = "https://images.unsplash.com/photo-1526786220381-1d21eedf92bf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
up_and_space_martinique = Space.new(name: "Up and Space Martinique", address: "80 impasse savonette Lamentin MQ 97232, Le Lamentin, Martinique", description: 'New establishment, private access to the sea. Free deckchairs at your disposal and free coffee.', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'http://upandspace.info/concours-fabrique-aviva/?fbclid=IwAR2X1cD3hhugDgd8mO85Fo9l_5jWfo2eN_oopaH-YkpVLATDe-0jf9SlPXc')
up_and_space_martinique.remote_photo_url = url
up_and_space_martinique.save

url = "https://images.unsplash.com/photo-1526786220381-1d21eedf92bf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
le_spot = Space.new(name: "Le Spot", address: "Rue Ferdinand Forest, Baie Mahault, Guadeloupe", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693847569', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'http://guadeloupe-coworking.com')
le_spot.remote_photo_url = url
le_spot.save

url = "https://images.unsplash.com/photo-1460627390041-532a28402358?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
la_mochila_cowork = Space.new(name: "La Mochila Cowork", address: "Calle Arzobispo Nouel 158, Santo Domingo 10210, République dominicaine", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693847969', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'https://www.lamochila-rd.com')
la_mochila_cowork.remote_photo_url = url
la_mochila_cowork.save

url = "https://images.unsplash.com/photo-1460627390041-532a28402358?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
banj = Space.new(name: "Banj", address: "5-A Rue P. Lumumba, Delmas 19, Port-au-Prince, Haïti", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693347569', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'www.banjht.com')
banj.remote_photo_url = url
banj.save






# AFRIQUE
url = "https://images.unsplash.com/photo-1520881363902-a0ff4e722963?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
africa_work = Space.new(name: "Africa Work", address: "10 Buxton St, Queenstown, 5320, Afrique du Sud", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
africa_work.remote_photo_url = url
africa_work.save

url = "https://images.unsplash.com/photo-1440492248262-6895f9da82fc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
africowork = Space.new(name: "Africowork", address: "1, King Shaka Ave, Point, Durban, 4001, South Africa", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
africowork.remote_photo_url = url
africowork.save

url = "https://images.unsplash.com/photo-1522683280249-025c6e03d311?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
africa_south = Space.new(name: "Africa South", address: "26 Murray St, Tarkastad, 5370, Afrique du Sud", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
africa_south.remote_photo_url = url
africa_south.save

url = "https://images.unsplash.com/photo-1452690700222-8a2a1a109f4c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"
the_hub = Space.new(name: "The Hub", address: "34 Lady Musgrave Rd, Kingston, Jamaïque", description: 'New establishment, private access to the sea. Free deckchairs at your disposal.', phone: '0693347569', owner: vr_lab, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'}, website: 'http://www.hubcoworking.net')
the_hub.remote_photo_url = url
the_hub.save






# ASIE
url = "https://coworker.imgix.net/photos/indonesia/bali/finns-bali/4-1529055152.jpg"
finns = Space.new(name: "Finns", address: "80 Circuit Rd, Singapore 370080", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
finns.remote_photo_url = url
finns.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: finns
) end

url = "https://coworker.imgix.net/photos/singapore/singapore/the-hive-new-bridge-road-singapore/1-1526289115.JPG"
the_hive = Space.new(name: "The Hive", address: "59 New Bridge Road, Singapore, Singapore", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
the_hive.remote_photo_url = url
the_hive.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: the_hive
) end

url = "https://coworker.imgix.net/photos/singapore/singapore/the-company/8-1557286237.jpg"
the_company = Space.new(name: "The Company", address: "331 NORTH BRIDGE ROAD, Singapore, Singapore", owner: havana_beach_coworking, opening_hours: {'Mon-Fri': '8AMP-8PM', 'Sat': '9AM-6PM', 'Sun': '10AM-1PM'})
the_company.remote_photo_url = url
the_company.save

2.times do
Desk.create!(
 price_per_day: 15,
 space: the_company
) end

puts ' --> SPACES created!'
puts 'Great ! Everything has been created ! '

# SEED RESERVATIONS
# puts 'Creating reservations...'

# Reservation.create!(
#   arrival_date: "2019-05-30",
#   departure_date: "2019-06-30",
#   status: "pending",
#   user: ludivine,
#   desk: finns
# )

# Reservation.create!(
#   arrival_date: "2019-08-15",
#   departure_date: "2019-08-30",
#   status: "pending",
#   user: ludivine,
#   desk: russia_work
# )

# Reservation.create!(
#   arrival_date: "2019-04-30",
#   departure_date: "2019-07-30",
#   status: "pending",
#   user: pauline,
#   desk: the_company
# )
