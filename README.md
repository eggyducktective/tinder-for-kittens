# Kitty Dating

For my second project at Web Development Immersive, I'm building my own Tinder... (for cats). I had this idea for a couple of weeks while studying Ruby on Rails (Also, because I love to have an excuse to look at cat pics all day while doing my coding, and cat puns, they are purrrty fun :D)
You can sign up for your adorable cat(s) and begin your journey. The main features include: Upload photos of your cats (the more, the better, because it's impurrrtant for cats to look at other hot kitties nearby). You as an user can choose to include your geo location or not (makes it easier to find a match).

![alt text](https://github.com/eggyducktective/tinder-for-kittens/blob/master/app/assets/images/kitty-pun.jpg)

## Sign up for this fun site now.

Get ready to embark on a quest to find your kitty(ies) their true love: [Kitty Tinder](https://kittydating.herokuapp.com/welcome.html)

## Ruby version:

ruby 2.4.1p111

## System dependencies

bundle install

Except for standard Gems that come with a Rails project, I installed 'annotate' (to annotate all models, tests, fixtures and factories), 'pry-rails' (to use pry as rails console ), 'pry-byebug' (to add step by step debugging), 'ransack' (to get a quick searching table), 'cloudinary' (to let users upload photos from their computer), 'httparty' (to look up cat facts api), 'geocoder' (to use map)

See Gemfile/Gemfile.lock

## Configuration

Ensure following values are stored in your environment:

```
ENV["CLOUDINARY_CLOUD_NAME"]
ENV["CLOUDINARY_API_KEY"]
ENV["CLOUDINARY_API_SECRET"]
```

## Database creation

Database can be initialized using:

```
$ rails db:migrate
```

## Database initialization

Demo data can be populated in to the site using:

```
$ rails db:seed
```

## Services (job queues, cache servers, search engines, etc.)

This service connects to a number of external searches:

  - Cloudinary
  - Google maps api for js
  - catfacts api :3

## Deployment instructions:

Push to Heroku enables rapid deployment of this app.

```
$ heroku create kittydating
$ git push heroku master
$ heroku run rails db:migrate
$ heroku ps:scale web=1
$ heroku run
$ heroku run rails db:seed
```

## Approach:

As always I started with CSS, I love fiddling with it. And it helped me with my creativity process. I created 3 models to begin with and slowly built from there.

## Technologies used:
- HTML
- CSS
- Javascript
- Ruby on Rails

## Unsolved problems:
- Figure out why some CSS elements do not work the way I wanted.


## Wish list:

As the time is quite limited, I could not have added all the features that I would like to. These include: A rating system for all your favourite kitties. Matching kitties by geo location. Cat marketplace, where you could buy and sell things for your kitties.


## Acknowledgement:

I would like to acknowledge Grumpy cat, Stinky cat, Smelly cat, Space Teddy, http.cat, catfacts and all my purrrfect fans.
