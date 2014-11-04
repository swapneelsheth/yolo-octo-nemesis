# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# names = ('a'..'z').to_a
#
# names.each do |album|
#   Album.create(:name => album, :price => rand(1..100))
# end

who = Album.create(:name => "My Generation", :price => 10, :release => "1965-12-03")
doors = Album.create(name: "L.A. Woman", price: 15, release: "1971-04-19")
led = Album.create(name: "Led Zeppelin IV", price: 12.5, release: "1971-11-08")

Song.create(title: "Love Her Madly", album_id: doors.id)
Song.create(title: "Riders on the Storm", album_id: doors.id)
Song.create(title: "My Generation", album_id: who.id)
Song.create(title: "The Kids are alrite", album_id: who.id)
Song.create(title: "Going to California", album_id: led.id)
Song.create(title: "Going to California", album_id: led.id)
Song.create(title: "Black Dog", album_id: led.id)
Song.create(title: "Rock and Roll", album_id: led.id)
Song.create(title: "Stairway to Heaven", album_id: led.id)
