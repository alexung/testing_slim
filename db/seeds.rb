# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  @category = Category.create(title: Faker::Commerce.department)
  (rand(10)).times do
    @category.articles.create(title: Faker::Commerce.product_name, description: Faker::Lorem.sentence(7, false, 10), price: Faker::Commerce.price, address: Faker::Address.street_address)
  end
end

