# frozen_string_literal: true

class Subcategory < ApplicationRecord
  include Dictionary

  has_many :manufacturers
  belongs_to :category
end
