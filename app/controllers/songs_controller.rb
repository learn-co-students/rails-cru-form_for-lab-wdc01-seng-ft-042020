class SongsController < ApplicationController

    before_action :find_song, only: [:show, :edit, :update, :destroy]

    def index
        @songs = Song.all
    end

    def show
    end

    def new
        @artists = Artist.all.map {|artist| [artist.name, artist.id]}
        @genres = Genre.all.map {|genre| [genre.name, genre.id]}
        @song = Song.new
    end

    def create
        
        @song = Song.create(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
    
    def edit
    end

    def update
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def destroy
    end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end

    def find_song
        @song = Song.find(params[:id])
    end

end
