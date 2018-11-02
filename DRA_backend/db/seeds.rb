# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Restriction.destroy_all
UserRestriction.destroy_all

ray = User.create(username: "ray", password: '123', email:"ray@rodz.com")

dairy = Restriction.create(source: "Dairy", description:"milk, cheese, yoghurt, pasturized, dairy ")
Restriction.create(source: "Vegetarian", description:"meat, beef, pork, chicken, poultry, fish, shrimp, crab, muscle, organ, hog, venison")
Restriction.create(source: "Vegan", description:"meat, beef, pork, venison, chicken, poultry, fish, shrimp, crab, muscle, organ, eggs, animal, milk, cheese, yoghurt, pasturized, dairy, honey")
Restriction.create(source: "Nuts", description: "nuts, peanut, brazil nuts, chestnuts, hazelnuts, filberts, hickory nuts, macadamia nuts, pecans.")
Restriction.create(source: "Pork", description: "hog, pork, swine, bacon, ham")
Restriction.create(source: "Beef", description: "cow, res, beef,steak ")
Restriction.create(source: "seafood", description: "fish, crab, oyster, shrimp, muscle, crustacean, sea, seafood")
Restriction.create(source: "Gluten", description: "wheat, rye, barley, malt, yeast, triticale")
Restriction.create(source: "Poultry", description: "chicken, duck, turkey, goose, fowl, peafowl, quail, partridge, caipercaillie, pheasent, ptarmigan, grouse, chukar, francolin, monal, guan")
Restriction.create(source: "Sugar", description: "sugar, sucrose ")

UserRestriction.create(user: ray, restriction: dairy)