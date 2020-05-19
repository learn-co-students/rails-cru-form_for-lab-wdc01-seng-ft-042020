class GenresController < ApplicationController
    
    before_action :find_genre, only: [:show, :edit, :update]
    def index
        @genres = Genre.all
    end

    def show
    end

    def new
        @genre = Genre.new
    end

    def edit
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end

    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end


end
