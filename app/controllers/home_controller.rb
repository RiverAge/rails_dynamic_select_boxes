class HomeController < ApplicationController

  def index
    @genres = Genre.all
    @artists = Artist.all
    @songs = Song.all
  end

  def update_artists
  #  genre = Genre.find_by(:id, params[:genre_id])
    genre = Genre.find_by(id: params[:genre_id])
    if (!genre.nil?)
      @artists = genre.artists.map { |a| [a.name, a.id] }.insert(0, 'Select An Artist')
      @songs = genre.songs.map { |s| [s.title, s.id] }.insert(0, 'Select a Song')
    else
      @artists = Artist.all.map { |a| [a.name, a.id] }.insert(0, 'Select An Artist')
      @songs = Song.all.map { |a| [a.title, a.id] }.insert(0, 'Select An Artist')
    end

  end

  def update_songs
    artist = Artist.find_by(id: params[:artist_id])
    if (!artist.nil?)
      @songs = artist.songs.map { |s| [s.title, s.id] }.insert(0, 'Select a Song')
    else
      @songs = Song.all.map { |a| [a.title, a.id] }.insert(0, 'Select An Artist')
    end
  end

end
