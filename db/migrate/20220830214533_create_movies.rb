class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :runtime
      t.string :rating
      t.integer :theater_id

      t.timestamps
    end
  end
end
