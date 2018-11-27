class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.string :genre
      t.string :link
      t.integer :year

      t.timestamps
    end
  end
end
