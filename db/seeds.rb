# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning the movie database...'
Movie.destroy_all

puts 'Creating 10 movies...'

10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Quote.famous_last_words,
    poster_url: Faker::LoremFlickr.image,
    rating: rand(1.0..10.0).round
  )
end

puts 'Done'
