# frozen_string_literal: true

class SubcategoriesController < ApplicationController
  def index
    @category = Category.cached_by_id[params[:category_id].to_i]
    @subcategories = @category.subcategories
  end

  def show
    @subcategory = Subcategory.cached_by_id[params[:id].to_i]
    @category = @subcategory.category
    @items = Item.where(subcategory_id: @subcategory.id).all
    @manufacturers = Manufacturer.where(id: @items.map(&:manufacturer_id)).all
  end
end
