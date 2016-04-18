# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(title: "Japan")
Category.create(title: "Korea")
Category.create(title: "Singapore")
Category.create(title: "Malaysia")
Category.create(title: "Canada")
Category.create(title: "Indonesia")
Category.create(title: "Phillipines")
Category.create(title: "Taiwan")
Category.create(title: "Cambodia")
Category.create(title: "Vietnam")
Category.create(title: "Ecuador")
Category.create(title: "Thailand")
Category.create(title: "USA")

Article.create(category_id: 1, title: "Tokyo", description: "Cool Japanese Place", price: 1000, address: "2-12-11 Chome Higashi")
