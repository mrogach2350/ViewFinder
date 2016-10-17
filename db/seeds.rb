# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
	first_name: FFaker::Name.first_name,
	last_name: FFaker::Name.last_name,
	email: FFaker::Internet.email,
	password_digest: 'password',
	bio: FFaker::BaconIpsum.sentence
	)

Landmark.create(
	title: 'Golden Gate Bridge',
	description: FFaker::DizzleIpsum.sentence
	)

Photo.create(
	title: 'Photo Title',
	url: 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/istock_000001168352_small.jpg',
	user_id: 1,
	landmark_id: 1
	)

golden_gate = Landmark.create(
	coordinates: '37.8199° N, 122.4783° W'
	)
bay_bridge = Landmark.create(
	coordinates: '37.7983° N, 122.3778° W'
	)
coit_tower = Landmark.create(
	coordinates: '37.8024° N, 122.4058° W'
	)
ferry_building = Landmark.create(
	coordinates: '37.7956° N, 122.3933° W'
	)
palace_of_fine_arts = Landmark.create(
	coordinates: '37.8029° N, 122.4484° W'
	)
grace_cathedral = Landmark.create(
	coordinates: '37.7920° N, 122.4134° W'
	)
city_hall = Landmark.create(
	coordinates: '37.7793° N, 122.4188° W'
	)
sfmoma = Landmark.create(
	coordinates: '37.7855° N, 122.4009° W'
	)
fort_mason = Landmark.create(
	coordinates: '37.8064° N, 122.4321° W'
	)
cupids_span = Landmark.create(
	coordinates: '37.7916° N, 122.3900° W'
	)
vaillancourt_fountain = Landmark.create(
	coordinates: '37.7955° N, 122.3954° W'
	)
lombard_street = Landmark.create(
	coordinates: '37.8021° N, 122.4187° W'
	)


