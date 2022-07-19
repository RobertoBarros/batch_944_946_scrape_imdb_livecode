require 'yaml'
require_relative 'scraper'

urls = fetch_top_movie_urls

movies = []
urls.each do |url|
  movies << scrape_movie(url)

  # puts "Title: #{movie[:title]}"
  # puts "Year: #{movie[:year]}"
  # puts "Plot: #{movie[:storyline]}"
  # puts '-' * 80
end

File.open('movies.yml', 'wb') do |file|
  file.write( movies.to_yaml )
end
