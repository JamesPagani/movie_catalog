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


## Example queries


### Search by Movie title
***Should a movie not be found locally, a query to the OMDb will be made.***

### Update the genre and/or rating of a movie
***This query will be done to the local database.***

### Search by other values
***These queries will be done to the local database.***

#### By ID

#### By Year (or range of years)


#### By Rating

#### By Genres

