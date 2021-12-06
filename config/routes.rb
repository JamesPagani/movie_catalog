Rails.application.routes.draw do
  scope '/api' do
    # Basic Search
    get '/movies', to: 'movies#show'

    # Update Rating and/or Genres
    put '/movies', to: 'movies#update'

    # Search by attribute
    get '/movies/by-id',     to: 'search/search_by_id#show'
    get '/movies/by-year',   to: 'search/search_by_year#show'
    get '/movies/by-rating', to: 'search/search_by_rating#show'
    get '/movies/by-genres', to: 'search/search_by_genres#show'
  end
end
