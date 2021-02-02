class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :address
      t.string :name
      t.string :category
      t.boolean :visited
      t.string :date_visited
      t.text :comment
      t.integer :cost
      t.string :attendees
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
