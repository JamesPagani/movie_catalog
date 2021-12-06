class Search::SearchByIdController < ApplicationController
    def show
        @movie = Movie.find(params[:id])
    end
end
