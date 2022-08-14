class Movie < ActiveRecord::Base
    
    # Takes in a year and returns all movies that were released in that year.
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    # Creates a new movie with the title passed in as an argument.
    def self.create_with_title(title)
        Movie.create(title: title)
    end
  
    # Returns the first movie in the database.
    def self.first_movie
        Movie.first
    end
  
    # Returns the last movie in the database.
    def self.last_movie
        Movie.last
    end
  
    # Returns the number of movies in the database.
    def self.movie_count
        Movie.count
    end
  
    # Takes in an id and returns the movie with that id.
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
  
    # Takes in a hash of attributes and returns the first movie that matches those attributes.
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end
  
    # Finds all movies that were released after 2002.
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end
  
    # Updates the attributes of a given object.
    def update_with_attributes(attributes)
        self.update(attributes)
    end
  
    # Updates all the titles of the movies in the database to the title passed in as an argument.
    def self.update_all_titles(title)
        Movie.update(title: title)
    end
  
    # Finds the movie with the id passed in as an argument and then destroys it.
    def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
    end
  
    # Deletes all the movies in the database.
    def self.delete_all_movies
        Movie.destroy_all
    end
  
end