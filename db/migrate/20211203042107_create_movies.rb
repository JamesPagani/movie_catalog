class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.integer :year
      t.float :rating
      t.string :title

      t.timestamps
    end
  end
end
