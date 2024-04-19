require_relative 'movie'
require_relative 'show'
require_relative 'movie_status'
require_relative 'ticket_booking'
require_relative 'cancel_booking'
require_relative 'seed'

movies = load_movies

def display_menu
  puts "Select an option:"
  puts "1. Display movie status"
  puts "2. Book tickets"
  puts "3. Cancel Booking"
  puts "4. Exit"
  puts "Please enter any option"
end

def get_booking_details
  print "Enter movie title: "
  title = gets.chomp.strip
  print "Enter show time: "
  show_time = gets.chomp.strip
  print "Enter number of tickets: "
  num_of_tickets = gets.chomp.strip.to_i

  [title, show_time, num_of_tickets]
end

loop do
  display_menu
  option = gets.chomp.to_i

  case option
  when 1
    MovieStatus.display_status(movies)
  when 2
    title, show_time, num_of_tickets = get_booking_details
    puts TicketBooking.book_ticket(movies, title, show_time, num_of_tickets)
  when 3
    title, show_time, num_of_tickets = get_booking_details
    puts CancelBooking.cancel_ticket(movies, title, show_time, num_of_tickets)
  when 4
    break
  else
    puts "Invalid option. Please try again."
  end
end

