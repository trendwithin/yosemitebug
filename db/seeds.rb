# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  Menu.create([{ item: 'Eggs and Bacon'}, { description: 'Egss any style with thick cut bacon'},
#                     { price: '$6.98' }, {meal: 'breakfast'}], :as => :admin)
Menu.create(item: 'Eggs', description: 'Any Style', price: '$5.00', meal: 'breakfast')
