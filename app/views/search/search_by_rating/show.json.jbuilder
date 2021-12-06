if @movies.nil?
    json.error "Incorrect Parameters/Format"
    json.response "False"
elsif @movies.empty?
    json.error "No movies found"
    json.response "False"
else
    json.movies do
        json.array! @movies do |movie|
            genres_array = Array.new()
            movie.genres.each do |g|
                genres_array<<g.genre
            end
            json.id movie.id
            json.title movie.title
            json.year movie.year
            json.rating movie.rating
            json.genres genres_array
        end
    end
    json.response "True"
end
