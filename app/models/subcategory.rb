# frozen_string_literal: true

class Subcategory < ApplicationRecord
  include Dictionary

  belongs_to :category
end
