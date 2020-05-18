class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
        
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artists_path
    end

    def edit
        @artist = Artist.find(params[:id])
        
    end

    def update
        @artist = Artist.find(params[:id])
        @artist = Artist.update(params[:id])
        redirect_to artists_path 
    end


    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end


end
