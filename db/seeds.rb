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

a = Artist.create(name: "Jimi", bio: "Born to Rock")
b = Artist.create(name: "Sam Smith", bio: "Born in England")

c = Genre.create(name:"Pop")
d = Genre.create(name:"Rock")

e = Song.create(name: "Purple Rain")
h = Song.create(name: "Hello")

e.artist_id = a.id
e.genre_id = d.id

h.artist_id = b.id
h.genre_id = c.id
