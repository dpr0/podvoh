# frozen_string_literal: true

class Modification < ApplicationRecord
  belongs_to :item
  has_and_belongs_to_many :users
end
