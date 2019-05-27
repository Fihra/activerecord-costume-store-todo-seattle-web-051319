# Create your haunted_houses migration here
class CreateHauntedHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :haunted_houses do |h|
      h.string :name
      h.string :location
      h.string :theme
      h.integer :price
      h.boolean :family_friendly
      h.datetime :opening_date
      h.datetime :closing_date
      h.string :description
    end
  end
end
