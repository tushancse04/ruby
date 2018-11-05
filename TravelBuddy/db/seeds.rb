	# This file should contain all the record creation needed to seed the database with its default values.
	# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
	#
	# Examples:
	#
	#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
	#   Character.create(name: 'Luke', movie: movies.first)

	TravelDestination.create!(address: 'Walt Disney World', city: 'Orlando', state: 'Florida')
	TravelDestination.create!(address: 'Las Vegas Strip', city: 'Las Vegas', state: 'Nevada')
	TravelDestination.create!(address: 'Grand Central Terminal', city: 'New York', state: 'New York')
	TravelDestination.create!(address: 'Magic Kingdom', city: 'Orlando', state: 'Florida')
	TravelDestination.create!(address: 'Disneyland Resort', city: 'Anaheim', state: 'California')
	TravelDestination.create!(address: 'Golden Gate Bridge', city: 'San Francisco', state: 'California')
	TravelDestination.create!(address: 'Faneuil Hall Marketplace', city: 'Boston', state: 'Massachusetts')
	TravelDestination.create!(address: 'Golden Gate Park', city: 'San Francisco', state: 'California')
	TravelDestination.create!(address: 'Pike Place Market', city: 'Seattle', state: 'Washington')
	TravelDestination.create!(address: 'South Street Seaport', city: 'New York', state: 'New York')

	# Javascript function to collect event info from facebook public event 
	# event description class name = "_7ty"
	# event description class name = "_4etw"
	# How to collect data:
	# 1. go to facebook event page. 
	# 2. click discover events
	# 3. in inspect element paste the code and run. 
	# 4. call getFacebookEventInfoByClassName('_4etw')
	
	# function getFacebookEventInfoByClassName(className){
	# 	eventInfoList = []
	# 	elements = document.getElementsByClassName(className)

	# 	for(i in elements){
	# 		eventInfoList.push(elements[i].innerText)
	# 	}

	# 	return eventInfoList
	# }



	events_names = ["2017 Beale Street Music Festival", "Beale Street Music Festival", "Southern Hotwing Festival  Contest- 15th Anniversary!", "March for Science Memphis", "2017 World Championship Barbecue Cooking Contest", "Palestine Festival 2017", "The Midnight Club 6th Annual Luxury Boat Party", "Memphis Veg Fest", "Stroll with the Trolls", "Southern Junkers Spring Vintage Market", "Memphis Flyer's Bacon  Bourbon 2017", "Twilight Spring 17 Party!", "Goat Cuddles!", "Cafe du Memphis at the Park!", "ATB Car Club Festival Memphis, TN", "National Train Day Memphis", "Start Co. Lounge: TEQWeek Edition", "MommyCon Memphis - 2017", "6th Annual Harbor Town Crawfish Festival", "Taste the Rarity 2017", "Memphis in May World Championship BBQ Cooking Contest 2017", "Kaleidoscope Food Festival", "A Hot Night with Silk and Rome on stage live in Memphis, TN", "Live in Memphis, TN at FedEx Forum", "Marsha Ambrosius, Eric Benet  Will Downing", "The TaKeOver: The Block Party!", "Memphis Veg Fest", "Night at the Lorraine", "Sisterhood Showcase 2017", "Condomonium 2017", "Humane Society Pup Crawl", "The ChainSmokers Tour at Fed Ex Forum Fri.May 19th Memphis TN.", "PC Band Presents The R. Kelly Tribute", "Todrick Hall presents Straight Outta Oz", "2017 Memphis Brewfest", "Damien Escobar Live in Memphis", "Speakeasy Parlor", "Memphis Punk Fest 5", "Cody Jinks  Ward Davis (Memphis)", "Flavor Run Memphis - 2.5k  5k Premier Family Event"]
	event_descriptions = ["#BSMF17 marks the 41st anniversary of the festival which regularly attracts music enthusiasts from all 50 states and a dozen foreign countries to the city where rock-n-roll and blues music all began. Over the past decade, th... See More ",  "A fundraiser created around the beloved Hotwing,  the vision of a downtown contest and festival has grown annually to become a Memphis tradition. Fun and excitement include a wing cooking contest, wing eating contest, live... See More ",  "March for Science Memphis, official satellite march of the March for Science on D.C. presents an Earth Day event in the heart of Memphis!... See More ",  "#WCBCC17 marks the 40th anniversary of America's most prestigious barbecue competition. We'll be celebrating in style and expanding the competition from three to four days!... See More ",  "Last year over 3,000 people joined us for the first-ever Palestine Festival in Memphis. The response was tremendous! We heard you loud and clear Memphis… you want more! Our festival planning committee is hard at work putting... See More ",  "The Official Date for this Event is June 3rd 2017; Location for this Event is Memphis, Tennessee. Hours for this will be from 7pm-Midnight.  #TheMidnightClub6thAnnual #LuxuryBoatParty2017 Pickup location for this Event is in... See More ",  "With cooperation from Replenish Kombucha, City Silo, Zaka Bowl, and Whole Foods- Memphis Veg Fest will be the Fresh Food Event of the Year! On Saturday, April 22, 2017, the festival will be filled with people enjoying vegan... See More ",  "Stroll on over to CMOM for your chance to meet some of your favorite Trolls and take a keepsake photo (don’t forget your camera!). Take part in our fun festival with themed arts and crafts in our Doodle Bugs Arts & Craft Stu... See More ",  "Southern Junkers Spring Vintage Market May 5 & 6 2017 Agricenter International, Memphis, Tn.↵Bringing YOU the Best in Vintage, Farmhouse, Antiques, Repurposed, Art, Handmade,... See More ",  "**** THIS EVENT IS SOLD OUT!  THERE WILL NOT BE TICKETS AVAILABLE AT THE DOOR! ****↵↵Come celebrate two well-appreciated South... See More ",  "Get in on the party of the season as we celebrate Spring 17 with live DJs, spring cocktails, giveaways, and the best rooftop views in Memphis.... See More ",  "Come cuddle with baby miniature goats and learn the facts and myths about dairy goats. ",  "Third Annual New Orleans-themed party to benefit the Dorothy Day House of Hospitality.  Join us for beignets, cafe au lait, mimosas, and shrimp and grits! ",  "The All Team Bash originated in Houston, and has since traveled to multiple cities, and 5 different states! We are the largest event in Houston and cannot wait to visit new_modal states and meet new_modal teams! Our focus is on CLUBS/TE... See More ",  "Everyone loves Train Day and our tentative day for 2017 has been set.  Keep watch for future announcements! ",  "We're thrilled to announce that we'll be joining cities all across America by hosting a TEQWeek Start Co. Lounge along with the Closing the Digital Divide Speed Pitch Competition to show Memphis’ support of equity and inclus... See More ",  "MommyCon is a nationwide convention series dedicated to creating and nurturing a community of parents and parents-to-be in celebration of natural parenting..... See More ",  "Come out to the 6th Annual Harbor Town Crawfish Festival, hosted by Bluff City Pizza Company.  This years event benifits the Memphis Food Bank and the Maria Montisorri School in Harbor Town.  Hot Crawfish, Cold Beer, and Liv... See More ",  "TASTE the RARITY Invitational Beer Festival will feature a line up of over 30 breweries from around the country & the release of UNICORNUCOPIA 2017 - a paloma inspired Belgian Single aged in tequila barrels. Live Music from... See More ",  "The Memphis in May World Championship Barbecue Cooking Contest — The Superbowl of Swine, The Granddaddy of Grilling — whatever you call it is unlike anything on the jowls of the Earth. Over 100,000 swine worshipers gather on... See More ",  "In only 2.5 square miles, residents in Binghampton represent over 17 different nations, making it one of the most diverse neighborhoods in Memphis.... See More ",  "A Hot Night in concert with Silk and Rome singing all of their famous hits.June 10th 2017 from 7 pm to , 30 pm. Tickets available now at ticketmaster.com or Cannon Center box office, Call 901-210-6983 for meet and greet pas... See More ",  "Marsha Ambrosius, Eric Benet & Will Downing ",  "AND IT IS BACK!! The hottest block party in the city! Join Team TKO as we do it again! Brother John and DJ Suave on the wheels of steel, Wiley Brown with the shots and you with the flavor!... See More ",  "Check out this great event rental at Levitt Shell!↵↵Replenish Kombucha presents Memphis Veg Fest with venue sponsors City Silo... See More ",  "You are invited to celebrate the vibrant history of the Lorraine Motel for the benefit of the National Civil Rights Museum. Step back in time with an evening of food, music and fun reminiscent of the Lorraine Motel – which c... See More ",  "Join us as we celebrate 21 years of The Sisterhood Showcase! An experience that combines entertainment and education to connect, engage and empower women.... See More ",  "CONDOMONIUM is Memphis' most outrageous party and thesignature fundraiser for CHOICES, a small (but, mighty) non-profit organization providing reproductive health care, education, and policy advocacy around reproductive heal... See More ",  "The Cooper-Young Pup Crawl, is hosted by the Cooper-Young Business Association and presented by top sponsors Memphis Animal Clinic.... See More ",  "The Chainsmokers are making their way back to Tennessee with special guest Kiiara and Whethan. May 19th at FedExForum in Memphis.... See More ",  "TICKETS ARE ON SALE NOW↵Go Online To Purchase GEN ADM. TICKETS $20 or VIP TABLES↵www.eventbrite.com (type in search bar.. PC B... See More ",  "A native of Texas, Todrick Hall is a singer, songwriter, dancer, actor, choreographer, playwright, costume designer, Broadway performer, American Idol finalist, star of his own self-titled MTV show and viral YouTube sensatio... See More ",  "The 2017 Memphis Brewfest will be held at AutoZone Park on Saturday, April 22. Tickets are on sale now, including a designated driver ticket option with no alcohol. You must be 21 or older to enter and present your photo ID... See More ",  "Memphis! I'm bringing The Heart & Soul Tour to the Cannon Center and tickets are On Sale NOW. Get your tickets and VIP upgrades and I'll see you at the show #Crooner ",  "Guys, show up in your best suits and Dolls wear your best glam!↵1920's attire is encouraged... See More ",  "The 5th and final Memphis Punk Fest hosted by Tyler Miller. ↵↵This will be the bar crawl of all bar crawls, will include 18+ v... See More ",  "With Ward Davis!↵Tickets On Sale NOW! ",  "2017 UPDATE: BRAND NEW AUTOMATIC CASH REFERRAL PROGRAM - SAVE $20↵AFTER you register, use your SPECIAL REFERRAL LINK to invite your friends to join you at the 2017 Flavor Run... See More ", "This is great event. Join and refer.", "This is great event. Join and refer."]

	# def get_random_word(dictionary)
	# 	dictionary[rand(dictionary.length)]
	# end



	admin_ahmmed = Admin.create(first_name: 'Kauser', last_name: 'Ahmmed', address: 'memphis', phone: '901-315-4477', email: 'mahmmed@memphis.edu', password: '123456', password_confirmation: '123456')
	admin_isaac = Admin.create(first_name: 'Isaac', last_name: 'Roland', address: 'memphis', phone: '901-315-8877', email: 'iroland@memphis.edu', password: '123456', password_confirmation: '123456')
	admin_mislam = Admin.create(first_name: 'Maminur', last_name: 'Islam', address: 'memphis', phone: '901-315-4467', email: 'mislam@memphis.edu', password: '123456', password_confirmation: '123456')
	admin_milu = Admin.create(first_name: 'Milu', last_name: 'Hasan', address: 'memphis', phone: '901-315-4477', email: 'mhasan@memphis.edu', password: '123456', password_confirmation: '123456')


	admin_ahmmed.user = User.create(first_name: admin_ahmmed.first_name, last_name: admin_ahmmed.last_name , address: admin_ahmmed.address, phone: admin_ahmmed.phone, email: admin_ahmmed.email)
	admin_isaac.user = User.create(first_name: admin_isaac.first_name, last_name: admin_isaac.last_name , address: admin_isaac.address, phone: admin_isaac.phone, email: admin_isaac.email)
	admin_milu.user = User.create(first_name: admin_milu.first_name, last_name: admin_milu.last_name , address: admin_milu.address, phone: admin_milu.phone, email: admin_milu.email)
	admin_mislam.user = User.create(first_name: admin_mislam.first_name, last_name: admin_mislam.last_name , address: admin_mislam.address, phone: admin_mislam.phone, email: admin_mislam.email)

	# admin_ahmmed.user = ahmmed
	# admin_isaac.user = isaac
	# admin_mislam.user = mislam
	# admin_milu.user = milu

	admin_ahmmed.save
	admin_isaac.save
	admin_mislam.save
	admin_milu.save

	0.upto(events_names.length - 1) do |i|
		ct = DateTime.now
		from_date = ct
		to_date = ct + 225.days
		currentDateTime = DateTime.now
		upcomingDateTime = Time.at((to_date.to_f - from_date.to_f)*rand + from_date.to_f)
		currentYear = currentDateTime.year
		futureYear = currentYear.to_i + 2
		futureDateTime = DateTime.new(futureYear)
		duration = Time.at((ct.to_f - (ct - 5.days).to_f)*rand + ct.to_f)
		# eventName = get_random_word(dictionary) + ' ' + i.to_s
		event_name = events_names[i]
		event_description = event_descriptions[i]

		if i % 2 == 0
			TravelEvent.create(name: event_name,
							   description: event_description,
							   max_attendance: rand(1..100),
							   price: rand(1..200),
							   start: DateTime.now,
							   travel_destination_id: 1,
							   duration: duration,
							   user_id: admin_ahmmed.user.id)
		else
			TravelEvent.create(name: event_name,
							   description: event_description,
							   max_attendance: rand(1..100),
							   price: rand(1..200),
							   start: upcomingDateTime,
							   travel_destination_id: 1,
							   duration: duration,
							   user_id: admin_ahmmed.user.id)

		end
	end



