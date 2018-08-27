# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

ProductCategory.destroy_all

  pc1= ProductCategory.create!(name:"Beer")
  pc2= ProductCategory.create!(name:"Soft Drinks")
  pc3= ProductCategory.create!(name:"Bady Milk")
  pc4= ProductCategory.create!(name:"Spirit")

Product.destroy_all

  Product.create!(name:"guinness",product_category_id:pc1.id, gram:"400")
  Product.create!(name:"stella",product_category_id:pc1.id, gram:"400")
  Product.create!(name:"heineken",product_category_id:pc1.id, gram:"400")
  Product.create!(name:"budweiser",product_category_id:pc1.id, gram:"400")
