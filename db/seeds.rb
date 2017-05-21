# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


store1 = Store.create(
                  name: "mimi.com",
                  location: "nairobi",
                  website: "www.mimi.com",
                  logo: "")

product1 = Product.create(
                      name: "summer dress",
                      image:"",
                      price: 120.99,
                      description: "a strappy summer dress that will change your life",
                      category: "dress",
                      store: store1)
product2 = Product.create(
    name: "shorts",
    image:"",
    price: 90.99,
    description: "denim shorts that are ragged and cover",
    category: "dress",
    store: store1)