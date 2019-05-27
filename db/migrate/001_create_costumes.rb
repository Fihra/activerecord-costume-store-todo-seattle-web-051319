# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and
# value types according to the spec

class CreateCostumes < ActiveRecord::Migration[5.2]

  def change
    create_table :costumes do |c|
      c.string :name
      c.integer :price
      c.integer :size
      c.string :image_url
      c.datetime :created_at
      c.datetime :updated_at
    end

  end




  # def change
  #   add_column :costumes, :name, :string
  #   add_column :costumes, :price, :integer
  #   add_column :costumes, :size, :integer
  #   add_column :costumes, :image_url, :string
  # end
end
# class CreateCostumes < ActiveRecord::Migration[5.1]
#   def change
#     add_column :costume_stores, :name, :string
#     add_column :costume_stores, :location, :string
#     add_column :costume_stores, :number_of_costumes, :integer
#     add_column :costume_stores, :in_business, :boolean
#     add_column :costume_stores, :opening_time, :string
#     add_column :costume_stores, :closing_time, :string
#   end
# end
