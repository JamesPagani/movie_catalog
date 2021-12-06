class Search::SearchByYearController < ApplicationController
    def show
        if params[:years].empty?
            @movies = nil
        elsif params[:years].count < 2
            @movies = Movie.where("year == ?", params[:years][0])
        else
            @movies = Movie.where("year >= ? AND year <= ?", params[:years][0], params[:years][1])
        end
    end
end
