# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



mariah = Artist.create(name: "Mariah Carey", bio: "90s artist")
pop = Genre.create(name: "Pop")
Song.create(name: "Dreamlover", artist_id: mariah.id, genre_id: pop.id)

