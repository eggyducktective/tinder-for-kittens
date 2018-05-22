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



Comment.destroy_all

o1 = Comment.create content: 'I love this cat, this is such a gracious cat'
o2 = Comment.create content: 'This cat is pretty average, nothing special'
o3 = Comment.create content: 'This cat is lovely'
o4 = Comment.create content: 'This is one fluffy cat'
o5 = Comment.create content: 'This cat is SO FREAKING COOL'
o6 = Comment.create content: 'This cat looks like he is always doing something naughty'

puts "Created #{Comment.all.length} comments."

c1.comments << o1 << o2
c5.comments << o5 << o3
c3.comments << o6
c4.comments << o4


u1.comments << o1 << o2
u2.comments << o3
u3.comments << o4 << o5 << o6

puts "Created relationship between cats and comments"

Hobby.destroy_all

h1 = Hobby.create name: 'Exercising'
h2 = Hobby.create name: 'Sleeping'
h3 = Hobby.create name: 'Chewing on random items'
h4 = Hobby.create name: 'Stalking human'
h5 = Hobby.create name: 'Purring'
h6 = Hobby.create name: 'Hunting mice'
h7 = Hobby.create name: 'Getting stuck in random places'
h8 = Hobby.create name: 'Going on fishy playdates'
h9 = Hobby.create name: 'Torturing dogs'
h10 = Hobby.create name: 'Being evil'

puts "Created #{Hobby.all.length} hobbies."

c1.hobbies << h1
c2.hobbies << h8 << h9
c3.hobbies << h3 << h7
c4.hobbies << h4 << h5 << h6
c5.hobbies << h10 << h9 << h2

puts "Created relationship between cats and hobbies"
