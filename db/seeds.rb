# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Role.delete_all
LeaveType.delete_all
User.create!(:email=>"admin@hindavi.in", :password=>"admin@h", :password_confirmation=>"admin@h",  :status=>"Active", :username=>"hindavi", :role_id => 1, :first_name => "hindavi", :last_name => "technologies")
Role.create!([{ role_type: 'admin' },	{ role_type: 'user' }])
LeaveType.create!([{ name: 'sick leave' },	{ name: 'casual leave' }, { name: 'earned leave' }])


Month.delete_all

open("#{Rails.root}/public/month.txt") do |month|
	month.read.each_line do |m|
	 name=m.chomp
	 Month.create!(:name=>name)
	end	
end	


Language.delete_all

open("#{Rails.root}/public/mother_tounge.txt") do |language|
   language.read.each_line do |l|
   	 lang=l.chomp
      Language.create!(:language_name=>lang)
   end

end
