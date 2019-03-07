# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.create name: 'Azul'
Party.create name: 'Amarillo'
Party.create name: 'Morado'
Party.create name: 'Verde'
Party.create name: 'Otro'


500.times do
    Vote.create party: Party.all.sample
end