class HomeController < ApplicationController

  def index
    @genres = Genre.all
    @artists = Artist.all
    @songs = Song.all
  end

  def update_artists
    genre = Genre.find(params[:genre_id])
    if (genre)
      @artists = genre.artists.map { |a| [a.name, a.id] }.insert(0, 'Select An Artist')
      @songs = genre.songs.map { |s| [s.title, s.id] }.insert(0, 'Select a Song')
    else
      @artists = Artist.all
      @songs = Song.all
    end

  end

  def update_songs
    artist = Artist.find(params[:artist_id])
    if (artist)
      @songs = artist.songs.map { |s| [s.title, s.id] }.insert(0, 'Select a Song')
    else
      @songs = Song.all
      @songs = Song.all
    end
  end

end
