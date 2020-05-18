class ArtistsController < ApplicationController

    before_action :find_artist, only: [:show, :edit, :update, :destroy]

    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        artist = Artist.create(artist_params(:name, :bio))
        redirect_to artist_path(artist)
    end
    
    def edit
    end

    def update
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def destroy
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end

end
