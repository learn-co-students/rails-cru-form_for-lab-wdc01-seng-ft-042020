# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

mariah = Artist.create(name: "Mariah Carey", bio: "90s Artist")
pop = Genre.create(name: "Pop")
Song.create(name: "All I want for Christmas", artist_id: mariah.id, genre_id: pop.id)