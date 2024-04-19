class MovieStatus
  def self.display_status(movies)
    puts "Movie Status:"
    movies.each do |movie|
      puts "#{movie.title} (Genre: #{movie.genre}):"
      movie.shows.each do |show|
        available_seats = show.seats - show.booked_seats.size
        puts "  - Show at #{show.time}: #{available_seats} available seats out of #{show.seats}"
      end
    end
  end
end
