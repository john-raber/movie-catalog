# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create([{
    title: 'Avengers: Infinity War',
    summary: 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.',
    genre: 'Action, Adventure, Fantasy',
    link: 'https://www.imdb.com/title/tt4154756/?ref_=ttls_li_tt',
    year: 2018
  },
  {
    title: 'Aquaman',
    summary: 'Arthur Curry learns that he is the heir to the underwater kingdom of Atlantis, and must step forward to lead his people and be a hero to the world.',
    genre: 'Action, Adventure, Fantasy',
    link: 'https://www.imdb.com/title/tt1477834/?ref_=ttls_li_tt',
    year: 2018
  },
  {
    title: 'Solo: A Star Wars Story',
    summary: 'During an adventure into the criminal underworld, Han Solo meets his future co-pilot Chewbacca and encounters Lando Calrissian years before joining the Rebellion.',
    genre: 'Action, Adventure, Fantasy',
    link: 'https://www.imdb.com/title/tt3778644/?ref_=ttls_li_tt',
    year: 2018
  },
  {
    title: 'Fantastic Beasts: The Crimes of Grindelwald',
    summary: 'The second installment of the "Fantastic Beasts" series set in J.K. Rowling\'s Wizarding World featuring the adventures of magizoologist Newt Scamander.',
    genre: 'Adventure, Family, Fantasy',
    link: 'https://www.imdb.com/title/tt4123430/?ref_=ttls_li_tt',
    year: 2018
  },
  {
    title: 'Black Panther',
    summary: 'Action, Adventure, Sci-Fi',
    link: 'https://www.imdb.com/title/tt1825683/?ref_=ttls_li_tt',
    year: 2018
  }
])
