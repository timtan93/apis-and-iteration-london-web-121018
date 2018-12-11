#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"

puts welcome
character = get_character_from_user
cf = parse_results(hash, character)
film_array = films(cf)
print_films(film_array)
