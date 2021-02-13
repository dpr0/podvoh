# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    # item_length hand_length
    @items = params[:item_type].present? ? Item.where(item_type: params[:item_type]) : Item
    @items = @items.all.to_a.group_by(&:item_type)
    @mods = {
      a01: [1, 2, 3, 3, 4, 5, 6, 7, 8, 3, 3, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0],
      a02: [1, 2, 3, 4, 5, 3, 3, 6, 7, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0],
      a03: [1, 2, 3, 4, 5, 3, 3, 3, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0],
      a04: [0, 1, 2, 3, 4, 5, 6, 7, 8, 3, 3, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0],
      a05: [0, 1, 2, 3, 4, 5, 3, 6, 7, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0],
      a06: [0, 1, 2, 3, 4, 5, 3, 3, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0],
      a07: [0, 0, 1, 2, 4, 5, 6, 7, 8, 3, 3, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0],
      a08: [0, 0, 1, 2, 4, 5, 3, 6, 7, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0],
      a09: [0, 0, 1, 2, 4, 5, 3, 3, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0],
      a10: [0, 0, 0, 0, 0, 1, 6, 7, 8, 4, 5, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0],
      a11: [0, 0, 0, 0, 0, 1, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0]
    }
  end

  def filter
    search = {}
    search[:manufacturer_id] = params[:manufacturer_ids] if params[:manufacturer_ids].present?
    search[:category_id] = params[:category_id] if params[:category_id].present?
    @items = Item.where(search).all.to_a.group_by(&:category_id)
    render layout: false
  end
end
