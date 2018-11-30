# Overview

This is a movie catalog which stores information about movies such as their
title, genre, year released, as well as a short summary of what the movie is
about. Certain movies will have a link to their related IMDb page.

# Usage

Clone down this repository.

From your console run the following:

```
  bundle install

  rails db:create

  rails db:migrate
```

You can run `rails db:seed` to insert a few movies into the catalog to start
with.

Alternatively, if you would like to start from scratch you can simply skip this
step.

If you would like to set up your catalog with your own list of movies, you can
update the db/seeds.rb file with the movies that you would like in the catalog
and then run `rails db:seed`.

Run rails s from your console. This should start the server on port 3000.

In your browser navigate to localhost:3000 (or whichever port your server is
running on) to get started.

# Pages

- Header
  The header includes links to return to the list of all movies and to insert a
  new movie into the catalog.

- Home page and /movies
  Displays a list of all of the movies included in the catalog sorted
  alphabetically by their title.

- /movies/:id
  Shows all of the cataloged information for a particular movie.

  Below the movie details there are buttons to edit the movie's information and
  to delete the movie from the catalog. If a link to the movie's IMDb page is
  included in the catalog, that link will be displayed in front of the edit and
  delete buttons.

- /movies/new
  Renders the form used to add a movie to the catalog. Fields marked with an
  asterisk are required. If the form is submitted without a required field, the
  error information will be displayed above the form explaining what part of the
  form needs to be updated.

- /movies/:id/edit
  Renders the form used to edit a movie. Fields marked with an asterisk are
  required. If the form is submitted without a required field, the error
  information will be displayed above the form explaining what part of the form
  needs to be updated.

# Tests

- Controller tests have been implemented for navigation to each of the catalog's
  pages as well as the create, update, and delete actions.

- Feature tests have been implemented for the movie form for both creating and
  editing a movie.
