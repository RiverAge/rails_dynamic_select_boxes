# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do |x|
  genre = Genre.find_or_create_by(:name => "Genre #{x}")
  3.times do |y|
    artist = Artist.find_or_create_by(:name => "Artist #{x}.#{y}", :genre => genre)
    3.times do |z|
      Song.find_or_create_by(:title => "Song #{x}.#{y}.#{z}", :artist => artist)
    end
  end
end