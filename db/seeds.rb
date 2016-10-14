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