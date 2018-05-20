# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Create Users"

User.destroy_all

u1 = User.create email: 'ben@ga.com', username: 'bearmaster', password: 'chicken'
u2 = User.create email: 'anh@ga.com', username: 'eggyducktective', password: 'chicken'
u3 = User.create email: 'spaceteddy@ga.com', username: 'teddyfromspace', password: 'chicken'


puts "Created #{User.all.length} users."


puts "Create cats"

Cat.destroy_all
c1 = Cat.create name: 'Pinky', image: 'https://images.pexels.com/photos/774731/pexels-photo-774731.jpeg', bio: 'A stinky cat'
c2 = Cat.create name: 'Fluffy', image: 'https://images.pexels.com/photos/384555/pexels-photo-384555.jpeg', bio: 'A fluffy ball of fur'
c3 = Cat.create name: 'Uh Oh', image: 'https://images.pexels.com/photos/127028/pexels-photo-127028.jpeg', bio: 'Oopz, I did it again'
c4 = Cat.create name: 'Rom Rom', image: 'https://images.pexels.com/photos/86243/pexels-photo-86243.jpeg', bio: 'I love you more than I can say'
c5 = Cat.create name: 'Cool Cat', image: 'https://images.pexels.com/photos/979247/pexels-photo-979247.jpeg', bio: 'I love exercising'

puts "Created #{Cat.all.length} cats."

u1.cats << c1
u2.cats << c2 << c3
u3.cats << c4 << c5

puts "created relationship between cats n users"
