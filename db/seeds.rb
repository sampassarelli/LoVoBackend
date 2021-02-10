# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Destination.destroy_all
User.destroy_all

puts "creating users"

user1 = User.create(first_name: "Sam", last_name: "Passarelli", username: "sam", email: "sam@gmail.com", password: "123")

puts "creating destination" 

destination1 = Destination.create(name: "Sear's Tower", date_visited: "12/23/2020", address: "100 N Michigan Ave", category: "Landmark", comment: "Its SO TALL! OMG!", visited: true, cost: 50, attendees: "Mom and dad", user_id: user1.id, latitude: 41.8788764, longitude: -87.6359149)
destination2 = Destination.create(name: "Bean", date_visited: "12/14/2020", address: "1234 Franklin Ave", category: "Landmark", comment: "Its SO ROUND! OMG!", visited: true, cost: 1, attendees: "Solo", user_id: user1.id, latitude: 41.8826572, longitude: -87.6233039)
destination3 = Destination.create(name: "Fireplace Inn", date_visited: "05/15/2019", address: "4321 Wells St", category: "Restaurant/Bar", comment: "OMG Its so fun, I was LIT!", visited: true, cost: 500, attendees: "THE SQUAD", user_id: user1.id, latitude: 41.9091241, longitude: -87.6348859)
destination4 = Destination.create(name: "Prysm", date_visited: "07/14/2019", address: "5678 Party Ave", category: "Club/Bar", comment: "Jack told me it was lit when he went there last time.", visited: true, cost: 1, attendees: "Me", user_id: user1.id, latitude: 41.9093619, longitude: -87.65253059999999)
