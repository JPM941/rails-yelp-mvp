# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mcdo = {name: "mcdo", address: "je sais pas ou", phone_number: 0635622233, category: "chinese"}
pizza =  {name: "Pizza", address: "16 rue de je ne sais pas", phone_number: 0635622534, category: "chinese"}
kfc =  {name: "Kfc", address: "458 avenue de je ne sais pas", phone_number: 0635622335, category: "chinese"}
burger_king =  {name: "burger king", address: "458 avenue de la rue", phone_number: 0635622435, category: "chinese"}
azerty =  {name: "azerty", address: "sur mon clavier", phone_number: 0635622133, category: "chinese"}

[mcdo, pizza, kfc, burger_king, azerty].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
