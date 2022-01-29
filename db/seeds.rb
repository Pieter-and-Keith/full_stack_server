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
    Detail.create(user_id: 2,first_name: "Pieter-Jan", last_name:"Delbecke", phone_number: "0405849602", street_number: 10, street_name:"Westminster Avenue",suburb:"Dee Why", postcode: 2099, state:"NSW", rego:"EEH66D", make:"Mazda", model:"2")
    Detail.create(user_id: 3,first_name: "Keith", last_name:"Ching", phone_number: "0499100666", street_number: 53, street_name:"George Street",suburb:"Sydney", postcode: 2000, state:"NSW", rego:"ABC321", make:"Toyota", model:"Hilux")
end