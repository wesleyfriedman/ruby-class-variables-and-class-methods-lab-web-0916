require 'pry'
class Song
	@@count = 0
	@@genres = []
	@@artists = []

	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		@@count += 1
		@name = name
		@artist = artist
		@genre = genre
		@@genres << genre
		@@artists << artist
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		@@genres.each_with_object({}) do |genre, genre_count_hash|
			if genre_count_hash[genre]
				genre_count_hash[genre] += 1
			else
				genre_count_hash[genre] = 1
			end
		end
	end

	def self.artist_count
		@@artists.each_with_object({}) do |artist, artist_count_hash|
			if artist_count_hash[artist]
				artist_count_hash[artist] += 1
			else
				artist_count_hash[artist] = 1
			end
		end
	end

end

# Pry.start