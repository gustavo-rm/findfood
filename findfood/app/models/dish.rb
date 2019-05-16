class Dish < ApplicationRecord
	validates_presence_of :description, :price, :preparationtime

  	has_and_belongs_to_many :ingredients
 	belongs_to :category
 	belongs_to :restaurant	
end
