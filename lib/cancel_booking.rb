class CancelBooking
  def self.cancel_ticket(movies, title, show_time, seat_number)
    movie, show = validate_booking(movies, title, show_time, seat_number)
    cancel_seat_booking(show, seat_number)
    "Cancelled booking for '#{title}' at #{show_time}, seat number: #{seat_number}."
  end

  def self.validate_booking(movies, title, show_time, seat_number)
    movie = movies.find { |m| m.title == title }
    raise "Movie not found" unless movie

    show = movie.shows.find { |s| s.time == show_time }
    raise "Show not found" unless show

    raise "Seat not booked" unless show.booked_seats.include?(seat_number)

    return movie, show
  end

  def self.cancel_seat_booking(show, seat_number)
    cancelled_seat = show.booked_seats.last(seat_number)
    show.booked_seats = show.booked_seats - cancelled_seat
  end
end