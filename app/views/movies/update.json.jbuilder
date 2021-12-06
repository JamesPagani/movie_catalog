if @movie.nil?
    json.error "The movie was not found."
    json.response "False"
else
    genres_array = Array.new()
    @movie.genres.each do |g|
        genres_array<<g.genre
    end
    json.id @movie.id
    json.title @movie.title
    json.year @movie.year
    json.rating @movie.rating
    json.genres genres_array
    json.response "True"
end
