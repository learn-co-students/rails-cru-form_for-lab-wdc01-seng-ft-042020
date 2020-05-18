# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

koffee = Artist.create(name: "koffee", bio: "Jamaican Raggae")
jcole = Artist.create(name: "J.cole", bio:"Rapper from North Carolina")

g1 = Genre.create(name: "Rap")
g2 = Genre.create(name: "Raggae")
g3 = Genre.create(name: "Jazz")
g4 = Genre.create(name: "Pop")
g5 = Genre.create(name: "R&B")