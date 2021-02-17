# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :subcategory
  has_many :modifications

  PROPS = [:prop1, :prop2, :prop3].freeze
  KOMPLEKT = ['Катушка', 'Гарпун', 'Трезубец', 'Пуля', 'Чехол', 'Кукан', 'Крепеж камеры', 'Крепеж фонаря'].freeze

end
