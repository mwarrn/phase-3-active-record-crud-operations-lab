# This class inherits from ActiveRecord::Migration and has a change method that creates a table called
# movies with the following columns: title, release_date, director, lead, and in_theaters
class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_date
      t.string :director
      t.string :lead
      t.boolean :in_theaters
    end
  end
end