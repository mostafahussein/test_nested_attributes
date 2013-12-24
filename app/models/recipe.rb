class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :directions

  # This is the rails magic that lets the form be build to hold the
  # nested attributes for both ingredients and directions.
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :directions
end
