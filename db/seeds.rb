# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

puts "Seeding users..."

User.create!(
  [
    { name: "Alice" },
    { name: "Bob"},
    { name: "Test" },
    { name: "test2" }
  ]
)

puts "Seeding posts..."

Post.create!(
  [
    { title: "First Post",  user: User.first },
    { title: "Second Post",user: User.second },
    { title: "Third Post",user: User.third },
    { title: "Fourth Post",user: User.last }
  ]
)

puts "✅ Seeding complete."
