class CreateMovieStarJoinTable < ActiveRecord::Migration
  def change
    create_table :movies_stars, :id => false do |t|
      t.integer :movie_id
      t.integer :star_id
    end
  end
end
