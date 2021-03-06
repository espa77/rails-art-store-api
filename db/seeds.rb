piece1 = Piece.create(title: "Writing Code with Carrots", style: "documentary", subject: "coding", medium: "polaroid", size: "20 x 20" , price: 9.99)
piece2 = Piece.create(title: "Clown Juice", style: "classic", subject: "substance abuse", medium: "canvas", size: "24 x 42" , price: 25.00)
piece3 = Piece.create(title: "Bingo", style: "figurative", subject: "pets", medium: "pottery", size: "608 x 2015" , price: 90.00)
piece4 = Piece.create(title: "Watching Television with Beer", style: "Fine Art", subject: "nude", medium: "C-type", size: "2 x 2" , price: 80.00)
piece5 = Piece.create(title: "Blowing Things Up", style: "graffiti", subject: "Arizona", medium: "desert rocks", size: "20 x 60" , price: 99.99)

artist1 = Artist.create(name: "Ethan Steiner" , location: "New York City", bio: "bio goes here")
artist1.pieces << piece1
artist1.save
artist2 = Artist.create(name: "Johnny Scheuch" , location: "New York City", bio: "bio goes here")
artist3 = Artist.create(name: "Chris Bradshaw" , location: "New York City", bio: "bio goes here")
artist4 = Artist.create(name: "Linda Haviv" , location: "New York City", bio: "bio goes here")
artist5 = Artist.create(name: "Alex the cat" , location: "Mexico", bio: "bio goes here")

exhibition1 = Exhibition.create(location: "New York, NY")
exhibition2 = Exhibition.create(location: "Newark, NJ")
exhibition3 = Exhibition.create(location: "Caracas, Venezuela")
exhibition4 = Exhibition.create(location: "San Pedro Sula, Honduras")
exhibition5 = Exhibition.create(location: "Acapulco, Mexico")
