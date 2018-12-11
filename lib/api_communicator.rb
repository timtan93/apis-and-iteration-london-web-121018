require 'rest-client'
require 'json'
require 'pry'

def hash
response = RestClient.get"https://www.swapi.co/api/people/"
response_hash = JSON.parse(response)
end

def parse_results(results, character)
  films = []
  results["results"].each do |data|
    if data["name"] == character
    data.each do |key, value|
      if key["films"]
        films = value
      end
    end
  end
end
films
end

def films(cf)
  movieList = []
  cf.collect do |movies|
    response = RestClient.get movies
    response_hash = JSON.parse(response)
    response_hash["title"]
  end
end

def print_films(film_array)
   film_array.each do |film|
     puts film
   end
end
