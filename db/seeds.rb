# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tables = ['users', 'landmarks', 'photos']

tables.each do |table|
	ActiveRecord::Base.connection.execute("TRUNCATE #{table} RESTART IDENTITY")
end

3.times do
	User.create(
		first_name: FFaker::Name.first_name,
		last_name: FFaker::Name.last_name,
		email: FFaker::Internet.email,
		password_digest: 'password',
		bio: FFaker::BaconIpsum.sentence
		)
end

Landmark.create(
	title: 'Golden Gate Bridge',
	description: FFaker::DizzleIpsum.sentence
	)

Landmark.create(
	title: 'Coit Tower',
	description: FFaker::DizzleIpsum.sentence
	)

Landmark.create(
	title: "Fisherman's Wharf",
	description: FFaker::DizzleIpsum.sentence
	)

Photo.create(
	title: 'Photo Title for GG Bridge',
	url: 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/istock_000001168352_small.jpg',
	user_id: 1,
	landmark_id: 1
	)

Photo.create(
	title: 'Photo Title for Coit Tower',
	url: 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/istock_000001168352_small.jpg',
	user_id: 1,
	landmark_id: 2
	)

Photo.create(
	title: "Photo Title for Fisherman's Wharf",
	url: 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/istock_000001168352_small.jpg',
	user_id: 1,
	landmark_id: 3
	)