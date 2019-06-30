# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(login: '1', password: '1', name: 'First')
User.create(login: '2', password: '2', name: 'Second')
User.create(login: '3', password: '3', name: 'Third')
