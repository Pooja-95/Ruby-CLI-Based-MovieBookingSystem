require_relative 'models/movie'
require_relative 'models/show'


def load_movies
  movies = [
    Movie.new("Baahubali: The Beginning", "Epic Action", [
      Show.new("3:00 PM", 100),
      Show.new("6:00 PM", 80),
      Show.new("9:00 PM", 120)
    ]),
    Movie.new("Dangal", "Biographical Sports Drama", [
      Show.new("4:00 PM", 90),
      Show.new("7:00 PM", 110)
    ]),
    Movie.new("3 Idiots", "Comedy Drama", [
      Show.new("5:00 PM", 120),
      Show.new("8:00 PM", 100)
    ]),
    Movie.new("PK", "Satirical Comedy Drama", [
      Show.new("2:30 PM", 150),
      Show.new("5:30 PM", 130),
      Show.new("8:30 PM", 120)
    ]),
    Movie.new("Lagaan", "Sports Drama", [
      Show.new("3:15 PM", 120),
      Show.new("6:15 PM", 100),
      Show.new("9:15 PM", 110)
    ]),
    Movie.new("Gully Boy", "Musical Drama", [
      Show.new("4:30 PM", 110),
      Show.new("7:30 PM", 90)
    ]),
    Movie.new("Andhadhun", "Thriller Comedy", [
      Show.new("4:45 PM", 100),
      Show.new("7:45 PM", 80)
    ]),
    Movie.new("Queen", "Comedy Drama", [
      Show.new("5:15 PM", 90),
      Show.new("8:15 PM", 70)
    ]),
    Movie.new("Taare Zameen Par", "Drama", [
      Show.new("3:45 PM", 140),
      Show.new("6:45 PM", 120),
      Show.new("9:45 PM", 130)
    ]),
    Movie.new("Chak De! India", "Sports Drama", [
      Show.new("2:00 PM", 160),
      Show.new("5:00 PM", 140),
      Show.new("8:00 PM", 150)
    ])
  ]

  movies
end
