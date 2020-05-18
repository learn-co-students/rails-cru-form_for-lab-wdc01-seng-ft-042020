class GenresController < ApplicationController
    
    before_action :find_id, only: [:show, :edit, :update, :destroy]
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

    def update
        @genre.update(params_genre(:name))
        redirect_to genre_path(@genre)
    end

    def create
        genre = Genre.create(params_genre(:name))
        redirect_to genre_path(genre)
    end

    def destroy
        @genre.destroy
        redirect_to genres_path
    end

    private

    def find_id
        @genre = Genre.find(params[:id])
    end

    def params_genre(*arg)
        params.require(:genre).permit(*arg)
    end



end
