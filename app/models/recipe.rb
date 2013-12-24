class Recipe < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy
  has_many :directions, dependent: :destroy

  # This is the rails magic that lets the form be build to hold the nested attributes for both ingredients and directions.
  #
  # The reject_if: :all_blank will not save any of the items if all the fields for that item are empty.
  # The allow_destroy: true will let us remove an item if there is a _destroy field set to truthy within that item's attributes.
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
end
