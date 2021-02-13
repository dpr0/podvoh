# frozen_string_literal: true

class Section < ApplicationRecord
  include Dictionary

  has_many :categories
end
