class GenresController < ApplicationController

  def index
     @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_path(@genre)
    else
      render :new
    end
  end

  def show
    @genre
  end

  private
    def genre_params
      params.require(:genre).permit(:name)
    end

end
