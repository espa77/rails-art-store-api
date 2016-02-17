## README

1. What are we building?
 - An artwork store with checkout capability
 - Rails backend API
 - Ember front end
 - Wrap Bootstrap simple template

1a. Can we accomplish this within the timeline?
  - yes

2. Who is it for?
- anyone interested in buying things online
- any employer looking to see if we can build a basic Rails API with an Ember front end


3. What features to we need?
- Rails API with at least 3 models
  - piece: title, style, subject, medium, size, price
  - artist: name, location, bio
  - user: name, email, buyer, seller
  *** exhibitions: location, date
- Ember Front End
  - show art pieces
  - show artists
  - show exhibitions (calendar)

User stories
 - As a user I want to be able to view all the artwork on 1 page
 - As a user I want to be able to view all the artists on 1 page
 - As a user I want to be able to view all the exhibitions on 1 page

Model Data
- piece: title, style, subject, medium, size, price
- artist: name, location, bio
- exhibitions: location, date

Think through pages
Index Page - announce website and purpose of the app
Artwork - show all artwork with data fields - maybe organize it in different ways according to user specifications
  (sort by field??)
Artist - show all artists with data fields - maybe organize it in different ways according to user specifications
  (sort by field??)
Exhibitions - show all exhibitions for all artists and artwork - maybe with a calendar
