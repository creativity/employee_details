# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(:email=>"admin@hindavi.in", :password=>"admin@h", :password_confirmation=>"admin@h",  :status=>"Active", :username=>"hindavi", :role_id => 1, :first_name => "hindavi", :last_name => "technologies")
Role.create!([{ role_type: 'admin' },	{ role_type: 'user' }])
LeaveType.create!([{ name: 'sick leave' },	{ name: 'casual leave' }, { name: 'earned leave' }])

