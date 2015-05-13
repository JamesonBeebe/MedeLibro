# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_INSECURE_PASSWORD = 'jameson1'
User.create({
	first_name: Jameson ,
	last_name: Beebe ,
	profile_name: Jamdaman5000 , 
	email: jamesonbeebe@gmail.com , 
	password: DEFAULT_INSECURE_PASSWORD
	password_confirmation: DEFAULT_INSECURE_PASSWORD
	})

User.create({
	first_name: Stephany ,
	last_name: Beebe ,
	profile_name: Stephies , 
	email: stephanybeebe@gmail.com , 
	password: DEFAULT_INSECURE_PASSWORD
	password_confirmation: DEFAULT_INSECURE_PASSWORD
	})

User.create({
	first_name: Fred ,
	last_name: Flintstone ,
	profile_name: Yabadaba , 
	email: freddy@gmail.com , 
	password: DEFAULT_INSECURE_PASSWORD
	password_confirmation: DEFAULT_INSECURE_PASSWORD
	})

User.create({
	first_name: Don ,
	last_name: Bouwkamp ,
	profile_name: Donny , 
	email: donny@gmail.com , 
	password: DEFAULT_INSECURE_PASSWORD
	password_confirmation: DEFAULT_INSECURE_PASSWORD
	})

jameson = User.find_by_email('jamesonbeebe@gmail.com')
stephany = User.find_by_email('stephanybeebe@gmail.com')
fred = User.find_by_email('freddy@gmail.com')
don = User.find_by_email('donny@gmail.com')


seed_user = jameson

seed_user.statuses.create(content: "Hello, World!")
stephany.statuses.create(content: "Hi, I'm steph")
fred.statuses.create(content: "Hi, I'm fred")

UserFriendship.request(seed_user, stephany).accept!
UserFriendship.request(seed_user, fred).block!
UserFriendship.request(seed_user, mike)