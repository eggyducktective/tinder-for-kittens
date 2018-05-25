# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Create Users"

User.destroy_all

u1 = User.create email: 'ben@ga.com', username: 'bearmaster', password: 'chicken', address: '1 Market street, Sydney'
u2 = User.create email: 'anh@ga.com', username: 'eggyducktective', password: 'chicken', address: '555 George street, Sydney'
u3 = User.create email: 'spaceteddy@ga.com', username: 'teddyfromspace', password: 'chicken', address: '110 William Hart Cres, Penrith, Sydney'
u4 = User.create email: 'bigteddy@ga.com', username: 'bigteddy', password: 'chicken', address: 'Albert St, Port Melbourne'
u5 = User.create email: 'teddy@ga.com', username: 'teddy', password: 'chicken', address: 'George street, Brisbane, Australia'
u6 = User.create email: 'tim@ga.com', username: 'timtam', password: 'chicken', address: 'Matthew St, Wollongong, Australia'
u7 = User.create email: 'alex@ga.com', username: 'guccigang', password: 'chicken', address: '123 Bunda street, Canberra, ACT, Australia'

puts "Created #{User.all.length} users."


puts "Create cats"

Cat.destroy_all
c1 = Cat.create name: 'Pinky', image: 'https://images.pexels.com/photos/774731/pexels-photo-774731.jpeg', bio: 'Hello, my name is Stinky. I am 3 years old and live in Sydney.'
c2 = Cat.create name: 'Fluffy', image: 'https://images.pexels.com/photos/384555/pexels-photo-384555.jpeg', bio: 'A fluffy ball of fur, I love playing with yarn.'
c3 = Cat.create name: 'Uh Oh', image: 'https://images.pexels.com/photos/127028/pexels-photo-127028.jpeg', bio: 'Hey there, I guess I am just your average Aussie cat who loves getting loose in the weekend. I am looking for a muscular kitty to take me and my owner on a fishy date.'
c4 = Cat.create name: 'Rom Rom', image: 'https://images.pexels.com/photos/86243/pexels-photo-86243.jpeg', bio: 'Bonjour mon amour, I am a romantic French kitty who loves listening to Sinatra and sipping on milk.'
c5 = Cat.create name: 'Cool Cat', image: 'https://images.pexels.com/photos/979247/pexels-photo-979247.jpeg', bio: 'Wasssssssup, I love cardio. I can run like 10 km an hour. Looking for some lady cat to do squatz n oatz all day, every day.'
c6 = Cat.create name: 'Helen', image: 'https://images.pexels.com/photos/399647/pexels-photo-399647.jpeg', bio: 'I am fierce. Here for fun only, because I am a strong, independent kitty who needs no male kitty in my life.'
c7 = Cat.create name: 'Victor', image: 'https://images.pexels.com/photos/590490/pexels-photo-590490.jpeg', bio: 'I am a quiet cat. I do not like to have fun. I do not know why I am here.'
c8 = Cat.create name: 'Bruce Wayne', image: 'https://images.pexels.com/photos/735423/pexels-photo-735423.jpeg', bio: 'I am no Batman, but I love playing with lights.'
c9 = Cat.create name: 'Linda', image: 'https://images.pexels.com/photos/412463/pexels-photo-412463.jpeg', bio: 'I am a single mother, looking for a male kitty who adores baby kitties.'
c10 = Cat.create name: 'Cece', image: 'https://images.pexels.com/photos/137049/pexels-photo-137049.jpeg', bio: 'Hello, I consider myself a creative individual. I often find myself stuck in random places. But that does not matter. YOLO.'



puts "Created #{Cat.all.length} cats."

u1.cats << c1
u2.cats << c2 << c3
u3.cats << c4 << c5
u4.cats << c6
u5.cats << c8
u6.cats << c9 << c10
u7.cats << c7

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
c6.hobbies << h1 << h5 << h7 << h8
c7.hobbies << h4 << h3 << h1 << h5 << h10
c8.hobbies << h2 << h1
c9.hobbies << h3 << h5 << h2
c10.hobbies << h1 << h6

puts "Created relationship between cats and hobbies"




Photo.destroy_all


p1 = Photo.create image: 'https://i.ytimg.com/vi/Bohsw3nWlrc/maxresdefault.jpg'
p2 = Photo.create image: 'https://images.backyardcatenclosures.com.au/app/uploads/2016/09/5-reasons-to-love-british-shorthair-cats1024X400.jpg'
p3 = Photo.create image: 'https://assets.rbl.ms/4151263/980x.jpg'
p4 = Photo.create image: 'https://i.pinimg.com/originals/0e/ed/34/0eed3407d1c05e799a21adff034248ca.jpg'
p5 = Photo.create image: 'https://static.boredpanda.com/blog/wp-content/uploads/2016/08/12531045_1001926639898442_425771496_n-57c047e530687__700.jpg'



puts "Created #{Photo.all.length} photos."


c1.photos << p1 << p2
c9.photos << p3 << p4
c2.photos << p5

puts "Created relationship between cats and photos."
