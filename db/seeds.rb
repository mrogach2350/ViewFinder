tables = ['users', 'landmarks', 'photos']

tables.each do |table|
	ActiveRecord::Base.connection.execute("TRUNCATE #{table} RESTART IDENTITY")
end

User.destroy_all
Landmark.destroy_all
Photo.destroy_all

# Create Users
#user_id : 1
User.create(
	first_name: 'Mikey',
	last_name: 'Rogachevsky',
	email: 'mikey@ga.com',
	password: '1234',
	bio: FFaker::BaconIpsum.sentence
	)

#user_id : 2
User.create(
	first_name: 'Ashley',
	last_name: 'Vernon',
	email: 'ashley@ga.com',
	password: '1234',
	bio: FFaker::BaconIpsum.sentence
	)

#user_id : 3
User.create(
	first_name: 'Wolf',
	last_name: 'Reese',
	email: 'wolf@ga.com',
	password: '1234',
	bio: FFaker::BaconIpsum.sentence
	)

#user_id : 4
User.create(
	first_name: 'Sera',
	last_name: 'Bak',
	email: 'sera@ga.com',
	password: '1234',
	bio: FFaker::BaconIpsum.sentence
	)

# Create Landmarks
#landmark_id : 1
golden_gate = Landmark.create(
	title: 'Golden Gate Bridge',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4783,
	long: 37.8199,
	url: 'http://imgur.com/CZmb3Qp.jpg'
	)

#landmark_id : 2
bay_bridge = Landmark.create(
	title: 'Bay Bridge',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.3778,
	long: 37.7983,
	url: 'http://imgur.com/BvgKy9t.jpg'
	)

#landmark_id : 3
coit_tower = Landmark.create(
	title: 'Coit Tower',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4058,
	long: 37.8024,
	url: 'http://imgur.com/1CF6yPl.jpg'
	)

#landmark_id : 4
ferry_building = Landmark.create(
	title: 'Ferry Building',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.3933,
	long: 37.7956,
	url: 'http://imgur.com/2rVDzWa.jpg'
	)

#landmark_id : 5
palace_of_fine_arts = Landmark.create(
	title: 'Palace of Fine Arts',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4484,
	long: 37.8029,
	url: 'http://imgur.com/XK0af6z.jpg'
	)

#landmark_id : 6
grace_cathedral = Landmark.create(
	title: 'Grace Cathedral',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4134,
	long: 37.7920,
	url: 'http://imgur.com/LqrkIMd.jpg'
	)

#landmark_id : 7
city_hall = Landmark.create(
	title: 'City Hall',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4188,
	long: 37.7793,
	url: 'http://imgur.com/t51HqJ8.jpg'
	)

#landmark_id : 8
sfmoma = Landmark.create(
	title: 'SF Museum of Modern Art',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4009,
	long: 37.7855,
	url: 'http://imgur.com/x6fQSTw.jpg'
	)

#landmark_id : 9
fort_mason = Landmark.create(
	title: 'Fort Mason',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4321,
	long: 37.8064,
	url: 'http://imgur.com/HbwqhPF.jpg'
	)

#landmark_id : 10
cupids_span = Landmark.create(
	title: "Cupid's Span",
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.3900,
	long: 37.7916,
	url: 'http://imgur.com/p1XbePI.jpg'
	)

#landmark_id : 11
vaillancourt_fountain = Landmark.create(
	title: 'Vaillancourt Fountain',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.3954,
	long: 37.7955,
	url: 'http://imgur.com/6jAIBei.jpg'
	)

#landmark_id : 12
lombard_street = Landmark.create(
	title: 'Lombard Street',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4187,
	long: 37.8021,
	url: 'http://imgur.com/6plIZoX.jpg'
	)
#landmark_id : 13
golden_park = Landmark.create(
	title: 'Golden Gate Park',
	description: FFaker::HipsterIpsum.sentence,
	lat: -122.4783,
	long: 37.8199,
	url: 'https://25va3qc1hw-flywheel.netdna-ssl.com/wp-content/uploads/2011/03/Japanese-Tea-Garden.jpg'
	)

# Add Photos to Landmarks
Photo.create(
	title: 'Golden Gate Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/istock_000001168352_small.jpg',
	user_id: 1,
	landmark_id: 1
	)
Photo.create(
	title: 'Golden Gate Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/g4l4lHk.jpg',
	user_id: 1,
	landmark_id: 1
	)
Photo.create(
	title: 'Golden Gate Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/RDkHY5g.jpg',
	user_id: 1,
	landmark_id: 1
	)
Photo.create(
	title: 'Golden Gate Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/5qMMZjr.jpg',
	user_id: 1,
	landmark_id: 1
	)
Photo.create(
	title: 'Bay Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/ZGQ7iz3.jpg',
	user_id: 1,
	landmark_id: 2
	)
Photo.create(
	title: 'Bay Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/RpiidVZ.jpg',
	user_id: 1,
	landmark_id: 2
	)
Photo.create(
	title: 'Bay Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://www.dot.ca.gov/hq/esc/tollbridge/SFOBB/jpgs/SFOBBnight.jpg',
	user_id: 1,
	landmark_id: 2
	)
Photo.create(
	title: 'Bay Bridge',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/UiLTaiE.jpg',
	user_id: 1,
	landmark_id: 2
	)
Photo.create(
	title: 'Coit Tower',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://cdn.funcheap.com/wp-content/uploads/2013/10/coit-tower-2.jpg',
	user_id: 1,
	landmark_id: 3
	)
Photo.create(
	title: 'Coit Tower',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/gxwNd6V.jpg',
	user_id: 1,
	landmark_id: 3
	)
Photo.create(
	title: 'Coit Tower',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/0BvPPjT.jpg',
	user_id: 1,
	landmark_id: 3
	)
Photo.create(
	title: 'Ferry Building',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://i.imgur.com/2rVDzWa.jpg',
	user_id: 1,
	landmark_id: 4
	)
Photo.create(
	title: 'Ferry Building',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/gE0PGbq.jpg',
	user_id: 1,
	landmark_id: 4
	)
Photo.create(
	title: 'Ferry Building',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/IfTFN5V.jpg',
	user_id: 1,
	landmark_id: 4
	)
Photo.create(
	title: 'Palace of Fine Arts',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://i.imgur.com/XK0af6z.jpg',
	user_id: 1,
	landmark_id: 5
	)
Photo.create(
	title: 'Palace of Fine Arts',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/IyzhjuW.jpg',
	user_id: 1,
	landmark_id: 5
	)
Photo.create(
	title: 'Grace Cathedral',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://i.imgur.com/LqrkIMd.jpg',
	user_id: 2,
	landmark_id: 6
	)
Photo.create(
	title: 'Grace Cathedral',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/2X7HWac.jpg',
	user_id: 2,
	landmark_id: 6
	)
Photo.create(
	title: 'Grace Cathedral',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/2W4Icxe.jpg',
	user_id: 2,
	landmark_id: 6
	)
Photo.create(
	title: 'City Hall',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://i.imgur.com/t51HqJ8.jpg',
	user_id: 2,
	landmark_id: 7
	)
Photo.create(
	title: 'City Hall',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/ow2xObV.jpg',
	user_id: 2,
	landmark_id: 7
	)
Photo.create(
	title: 'City Hall',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/XYNlxgx.jpg',
	user_id: 2,
	landmark_id: 7
	)
Photo.create(
	title: 'SF Museum of Modern Art',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://i.imgur.com/4XabPap.jpg',
	user_id: 2,
	landmark_id: 8
	)
Photo.create(
	title: 'SF Museum of Modern Art',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/x6fQSTw.jpg',
	user_id: 2,
	landmark_id: 8
	)
Photo.create(
	title: 'SF Museum of Modern Art',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/DDleG9j.jpg',
	user_id: 2,
	landmark_id: 8
	)
Photo.create(
	title: 'Fort Mason',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://cdn.funcheap.com/wp-content/uploads/2013/10/coit-tower-2.jpg',
	user_id: 2,
	landmark_id: 9
	)
Photo.create(
	title: 'Fort Mason',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/E8o6HvI.jpg',
	user_id: 2,
	landmark_id: 9
	)
Photo.create(
	title: 'Cupid\'s Span',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://i.imgur.com/p1XbePI.jpg',
	user_id: 2,
	landmark_id: 10
	)
Photo.create(
	title: 'Cupid\'s Span',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/SM0S1Za.jpg',
	user_id: 2,
	landmark_id: 10
	)
Photo.create(
	title: 'Vaillancourt Fountain',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/6jAIBei.jpg',
	user_id: 2,
	landmark_id: 11
	)
Photo.create(
	title: 'Lombard Street',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://i.imgur.com/6plIZoX.jpg',
	user_id: 2,
	landmark_id: 12
	)
Photo.create(
	title: 'Lombard Street',
	caption: FFaker::HipsterIpsum.sentence,
	url: 'http://imgur.com/HwgDUWP.jpg',
	user_id: 2,
	landmark_id: 12
	)
