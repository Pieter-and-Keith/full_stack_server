# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.count == 0
    User.create(username: "admin", email: "admin@test.com", password:"admin", password_confirmation:"admin")
    User.create(username: "Pieter", email: "pieter@test.com", password:"Password1", password_confirmation:"Password1")
    User.create(username: "Keith", email: "keith@test.com", password:"Password2", password_confirmation:"Password2")
end

if Detail.count == 0
    Detail.create(user_id: 1,first_name: "admin", last_name:"admin", phone_number: "0499666999", street_number: 10, street_name:"Admin Avenue",suburb:"Sydney", postcode: 2000, state:"NSW", rego:"XYZ987", make:"Nissan", model:"Booster")
    Detail.create(user_id: 2,first_name: "Pieter-Jan", last_name:"Delbecke", phone_number: "0405849602", street_number: 10, street_name:"Westminster Avenue",suburb:"Dee Why", postcode: 2099, state:"NSW", rego:"EEH66D", make:"Mazda", model:"2")
    Detail.create(user_id: 3,first_name: "Keith", last_name:"Ching", phone_number: "0499100666", street_number: 53, street_name:"George Street",suburb:"Sydney", postcode: 2000, state:"NSW", rego:"ABC321", make:"Toyota", model:"Hilux")
end

if Option.count == 0
    Option.create(service_type: "yearly service", description: "After a full your on the road, your car deserves some love...", price: 249)
    Option.create(service_type: "battery replacment", description: "Having troubles to get your car started? let's have us a look at it's battery", price: 450)
    Option.create(service_type: "new tyres", description:"Are your tyres worn out? We have an awesom collection of brand new ones", price: 600)
    Option.create(service_type: "car wash", description:"Too busy to wash your car?... no worries, we'll do it for you", price: 80)
end

if Booking.count == 0
    Booking.create(user_id:2,option_id:3, date: "30/01/2022", comment:"Urgent!", finished: false, paid: false)
    Booking.create(user_id:3,option_id:2, date: "20/01/2022", comment:"was just fixed, last month", finished: false, paid: false)
end