class MovieController < ApplicationController
  def new
  end
  def poster
    @movie = params[:movie]
    if @movie != nil
      @movie = @movie.gsub(' ', '+')

      movie_string = HTTParty.get('http://www.omdbapi.com/?t=' + @movie).body
      @movie_hash = JSON(movie_string)

      @title = @movie_hash['Title']
      @poster = @movie_hash['Poster']
      @year = @movie_hash['Year']
      @rated = @movie_hash['Rated']
    end
  end
end