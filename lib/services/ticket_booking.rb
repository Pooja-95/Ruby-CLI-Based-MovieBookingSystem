class TicketBooking
  class CustomBookingError < StandardError; end

  def self.book_ticket(movies, title, show_time, num_of_tickets)

    movie, show = find_movie_and_show(movies, title, show_time)
    seat_range = process_booking(show, num_of_tickets)
    booking_confirmation(title, show_time, seat_range)
  end

  private_class_method

  def self.find_movie_and_show(movies, title, show_time)
    movie = movies.find { |m| m.title == title }
    found_show = movie&.shows&.find { |s| s.time == show_time }

    if movie.nil? || found_show.nil?
      raise CustomBookingError, "Movie or show not found"
    else
      [movie, found_show]
    end
  end


  def self.process_booking(show, num_of_tickets)
    raise CustomBookingError, "Number of tickets cannot be zero" if num_of_tickets.zero?

    available_seats = show.seats - show.booked_seats.size
    raise CustomBookingError, "Not enough seats available" if available_seats < num_of_tickets

    start_seat_number = show.booked_seats.last.to_i + 1
    end_seat_number = start_seat_number + num_of_tickets - 1

    (start_seat_number..end_seat_number).each { |seat_number| show.booked_seats.push(seat_number) }
    (start_seat_number..end_seat_number)
  end

  def self.booking_confirmation(title, show_time, seat_range)
    "Booked #{seat_range.size} tickets for '#{title}' at #{show_time}. Seat numbers: #{seat_range.first}-#{seat_range.last}."
  end
end
