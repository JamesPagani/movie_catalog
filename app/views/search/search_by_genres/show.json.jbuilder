if @movies.nil?
    json.error "Incorrect Parameter/Format"
    json.response "False"
else
    json.movies do
        @movies.each do |genre, movies|
            json.set! genre do
                json.array! movies do |movie|
                    unless movie.nil?
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
            end
        end
    end
    json.response "True"
end
