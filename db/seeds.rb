# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Genre.destroy_all
Artist.destroy_all

drake = Artist.create(name: "Drake ", bio: "Canadian rapper")
jayz = Artist.create(name: "Jay-Z", bio: "New York rapper")

rap = Genre.create(name: "rap")
rock = Genre.create(name: "rock")

tootsie = Song.create(name: "Tootsie Slide", artist_id: drake.id, genre_id: rap.id)
girls = Song.create(name: "Girls, Girls, Girls", artist_id: jayz.id, genre_id: rap.id)
