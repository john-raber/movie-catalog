class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.all
  end

  def show
  end

  # def new
  #   @movie = Movie.new
  # end
  #
  # def create
  #   @movie = Movie.create(movie_params)
  #
  #   # if @movie.errors.any?
  #   #   render :new
  #   # else
  #   #   redirect_to @movie
  #   # end
  # end

  # def edit
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(
      :title,
      :summary,
      :year,
      :genre,
      :link
    )
  end
end
