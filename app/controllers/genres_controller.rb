class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(set_params(:name)) # CREATE set_params METHOD
    redirect_to genre_path(@genre)
  end

  def show
    set_genre
  end

  def edit
    set_genre
  end

  def update
    set_genre
    @genre.update(set_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def set_params(*args)
    params.require(:genre).permit(*args)
  end

end
