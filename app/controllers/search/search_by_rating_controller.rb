class Search::SearchByRatingController < ApplicationController
    def show
        @movies = nil

        unless params[:rating].nil? && params[:limit].nil?
            case params[:limit]
            when "<"
                @movies = Movie.where("rating < ?", params[:rating])
            when "<="
                @movies = Movie.where("rating <= ?", params[:rating])
            when ">"
                @movies = Movie.where("rating > ?", params[:rating])
            when ">="
                @movies = Movie.where("rating >= ?", params[:rating])
            end
        end
    end
end
