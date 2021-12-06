<h1 align="center">Movie Catalogs</h1>
<p align="center">Movie Searching API</p>

## About

*Movie Catalogs* is an API developed with *Ruby on Rails* that allows you to quickly check on the information about your favourite movies and update their rating and genres to those of your liking. It relies on the [Open Movie Database](http://www.omdbapi.com/) to get the movies that are not available locally, after which it stores a local copy for future and/or special queries (described below).

## Running the API locally
Before using this API, you will need to do two things:

1. Clone this repository
2. [Generate your OMDb API Key](http://www.omdbapi.com/apikey.aspx).
    - Make sure to follow the instructions on the site. It is up to you if you want to use a free or Patreon account.

### Set-Up
1. After cloning this repositry, install all gems.
```bash
$ bundle install
```
2. Create an enviroment variable called `OMDB_APIKEY`.
```bash
$ export OMDB_APIKEY=abcd1234
```
3. Run the server!
```bash
$ rails server
```

Now you can begin making queries to the API!

## Endpoints

This README will asume that you're running this project locally.

- `GET localhost:3000/api/movies`
    - title: String. The title of the movie to search.
- `PUT localhost:3000/api/movies`
    - title: String. The title of the movie to update.
    - rating: Float. The updated rating of the movie.
    - genres: Array of Strings. The updated genre(s) of the movie.
- `GET localhost:3000/api/movies/by-id`
    - id: Integer. The ID of the movie to search.
- `GET localhost:3000/api/movies/by-year`
    - year: Array of integers...
        - [year] will search for all movies made in that specific year.
        - [from, to] will search all movies made during that period of time.
- `GET localhost:3000/api/movies/by-rating`
    - rating: Float. Score to compare all movies with.
    - limit: String. Determines what movies to search...
        - "<": Return all movies with ratings lower than rating.
        - "<=": Return all movies with ratings lower or equal than rating.
        - ">": Return all movies with ratings higher than rating.
        - ">=": Return all movies with ratings higher or equal than rating.
- `GET localhost:3000/api/movies/by-genres`
    - genres: Array of strings. The genres of movies to search.
***
