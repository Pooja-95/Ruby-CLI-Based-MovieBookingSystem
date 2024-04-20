Movie Ticket Booking System

Overview

This is a simple command-line movie ticket booking system written in Ruby. It allows users to view available seats for various movies, book tickets, and cancel bookings.

Features

  Display movie status: View available seats for each showtime of all movies.
  Book tickets: Reserve seats for a specific movie and showtime.
  Cancel Booking: Cancel a previously booked ticket.

Requirements

To run the Movie Booking System, ensure you have Ruby installed on your machine.

Installation Process

1. Clone the repository: git clone https://github.com/Pooja-95/Ruby-CLI-Based-MovieBookingSystem.git 

2. Navigate to the project directory ie. cd Ruby-CLI-Based-MovieBookingSystem.

3. Run the application:  ruby lib/scripts/script_movie_booking.rb

4. Follow the console prompts to interact with the booking system.

Usage(Interacting with the Booking System)

Upon running the script, you will be presented with a menu where you can select various options:

  1. Display Movie Status:
      Choose the option to view the current status of all movies.
      You'll see a list of movies along with available seats for each showtime.

  2. Book Tickets:
      Select the option to book tickets.
      Provide the movie title, showtime, and the number of tickets you want to book.
      If seats are available, your booking will be confirmed, and you'll receive a confirmation message.

  3. Cancel Booking:
      Choose the option to cancel a booking.
      Enter the movie title, showtime, and number of tickets you wish to cancel.
      If the seat was previously booked, it will be canceled, and you'll receive a confirmation message.

  4. Exit the Application:
      When you're done, select the option to exit the application.
      The program will terminate, and you'll return to the command line.