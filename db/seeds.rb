# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "json"
require "open-uri"

puts "starting"

User.destroy_all
Game.destroy_all
UserGame.destroy_all

  url = "https://api.boardgameatlas.com/api/search?client_id=9cu2Exy2kH&limit=100"

  url_open = URI.open(url).read
  response = JSON.parse(url_open)

  response["games"].each do |game|
    title = game["name"]
    year = game["year_published"]
    min_players = game["min_players"]
    max_players = game["max_players"]
    playtime = game["min_playtime"]
    image_url = game["image_url"]
    average_rating = game["average_user_rating"]
    description = game["description"]

    p @game = Game.create!(title: title, year: year, min_players: min_players, max_players: max_players, playtime: playtime, image_url: image_url, average_rating: average_rating, description: description)
    @game.description = @game.description.gsub('<p>', '').gsub('</p>', '').gsub('<br>', '').gsub('<br />', '').gsub('<em>', '').gsub('</em>', '').gsub('<strong>', '').gsub('</strong>', '')
    @game.save!
  end

puts "Done"

100.times do
  User.create(first_name: Faker::Artist.name,
              last_name: Faker::Name.name,
              address: Faker::Address.full_address,
              phone_number: Faker::PhoneNumber.phone_number,
              rating: rand(0..10),
              plz: Faker::Address.zip,
              email: Faker::Internet.email,
              encrypted_password: Faker::Invoice.reference)
  print "User created"
end
