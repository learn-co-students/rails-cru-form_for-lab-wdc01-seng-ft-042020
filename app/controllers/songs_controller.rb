class SongsController < ApplicationController

    before_action :song_params, only: [:show, :edit, :update, :destroy]

    def index
        @songs = Song.all
    end

    def show
        @genre = @song.genre
        @artist = @song.artist
    end

    def edit
    end

    def update
        @song.update(doesnt_matter(:name, :genre_id, :artist_id))
        redirect_to song_path(@song)
    end

    def new
        @song = Song.new
    end

    def create
        song = Song.create(doesnt_matter(:name, :genre_id, :artist_id))
        redirect_to song_path(song)
    end

    def destroy
    end


    private
    def song_params
        @song = Song.find(params[:id])
    end

    def doesnt_matter(*args)
        params.require(:song).permit(*args)
    end

end
