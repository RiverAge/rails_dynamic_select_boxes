class HomeController < ApplicationController

  def index
    @genres = Genre.all

    #@artists = Artist.all
    #@songs = Song.all
   # @artists = Array.new
   # @songs = Array.new
   # @artists = [{id: '', name: 'Select An Artist'}]
   # @songs = [{id: '', title: 'Select An Song'}]
    @artists = [Artist.new(id: '', name: 'Select an Artist')]
    @songs = [Song.new(id: '', title: 'Select a Song')]
    #@artists = @artists.map { |a| [a.name, a.id]  }.insert(0, 'Select An Artist')
    #@songs = @songs.map { |s| [s.title, s.id] }.insert(0, 'Select A Songs')
  end

  def update_artists
  #  genre = Genre.find_by(:id, params[:genre_id])
    genre = Genre.find_by(id: params[:genre_id])
    if (!genre.nil?) 
   #  @artists = genre.artists.map { |a| [a.name, a.id] }.insert(0, 'Select An Artist')
  #   @songs = genre.songs.map { |s| [s.title, s.id] }.insert(0, 'Select a Song')
      @artists = genre.artists
   #   @songs = genre.songs
    else
      @artists = Hash.new
    #  
    end
    @artists = @artists.map { |a| [a.name, a.id]  }.insert(0, 'Songselect An Artist')
    @songs = Hash.new 
    @songs = @songs.map { |s| [s.title, s.id] }.insert(0, 'Select A Songs')
  end

  def update_songs
    artist = Artist.find_by(id: params[:artist_id])
    if (!artist.nil?) 
      @songs = artist.songs
    else
      @songs = Hash.new
    end
    @songs = @songs.map { |s| [s.title, s.id] }.insert(0, 'Select A Songs')
  end

end
