class Search::SearchByGenresController < ApplicationController
    def show
        @movies = nil

        unless params[:genres].nil? || params[:genres].empty?
            @movies = Hash.new()
            Genre.where(genre: params[:genres]).each do |g|
                @movies[g.genre] = g.movies
            end
        end
    end
end
