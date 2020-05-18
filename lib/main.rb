require "pry"
require_relative 'artist'
require_relative 'song'
require_relative 'genre'

# ARTISTS
theWeeknd = Artist.new("THEWEEKND")
linkinpark = Artist.new("LINKIN PARK")
nickelback = Artist.new("NICKELBACK")

# GENRES
popmusic = Genre.new("POP MUSIC")
alternb = Genre.new("ALTERNATIVE R&B")
alternrock = Genre.new("ALTERNATIVE ROCK")
raprock = Genre.new("RAP ROCK")

# SONGS - TheWeeknd
starboy = Song.new("STARBOY", theWeeknd, popmusic)
blindedByTheLights = Song.new("Blinded By The Lights", theWeeknd, popmusic)
toolate = Song.new("TOOLATE", theWeeknd, alternb)

# p theWeeknd.songs

# SONGS - Linkin Park
crawling = Song.new("Crawling", linkinpark, alternrock)
intheend = Song.new("In The End", linkinpark, alternrock)
numb = Song.new("Numb", linkinpark, raprock)

# SONGS - Nickelback
faraway = Song.new("Far Away", nickelback, alternrock)

puts "========================================================"
puts "                   Artist.songs"
puts "========================================================"
p linkinpark.songs
puts "========================================================"
puts "                   Artist.genres"
puts "========================================================"
p linkinpark.genres

puts "========================================================"
puts "                   Genre.songs"
puts "========================================================"
p alternrock.songs
puts "========================================================"
puts "                   Genre.artists"
puts "========================================================"
p alternrock.artists
puts "========================================================"
puts "                   Song.artists"
puts "========================================================"
p alternrock.artists