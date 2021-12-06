class MoviesController < ApplicationController
  def show
    # Find Locally
    @movie = Movie.find_by(title: params[:title])

    # If movie is not stored locally, find remotely
    if @movie.nil?
      new_m = find_remote(params[:title])

      # Create a new movie record, should the name found remotely not exist locally
      unless new_m.nil?
        @movie = create_movie(new_m) if Movie.find_by(title: new_m["Title"]).nil?
      end
    end
  end

  def update
  end

  def find_remote(t)
    # Set the OMDb URI + Query string
    omdb_uri = URI('http://www.omdbapi.com/')
    omdb_params = {apikey: ENV["OMDB_APIKEY"], t: t}
    omdb_uri.query = URI.encode_www_form(omdb_params)

    res = JSON(Net::HTTP.get(omdb_uri))
    if res["Response"] == "False"
      return nil
    end

    return res
  end

  def create_movie(movie_info)
    # Getting the data (and parsing when required)
    m_id = movie_info["imdbID"][2..].to_i
    m_title = movie_info["Title"]
    m_year = movie_info["Year"].to_i
    m_rating = movie_info["imdbRating"].to_f
    m_genres = movie_info["Genre"].split(', ')

    # Creating the movie record
    new_movie = Movie.create(id: m_id, title: m_title, year: m_year, rating: m_rating)

    # Associating the genres (and creating the records, if they don't exist)
    m_genres.each do |genre|
      g = Genre.find_or_create_by(genre: genre)
      new_movie.genres<<g
    end

    return new_movie
  end
end
