class GenresController < ApplicationController

  def index
     @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show

  end





end