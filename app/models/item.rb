# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer

  ITEM_LENGTH = [450, 600, 750, 900].freeze
  HAND_LENGTH = [59, 170, 207, 246].freeze
  KOMPLEKT    = ['Катушка', 'Гарпун', 'Трезубец', 'Пуля', 'Чехол', 'Кукан', 'Крепеж камеры', 'Крепеж фонаря'].freeze
end
