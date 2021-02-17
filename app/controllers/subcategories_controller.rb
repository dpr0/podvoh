# frozen_string_literal: true

class SubcategoriesController < ApplicationController
  def index; end

  def show
    @subcategory = Subcategory.cached_by_id[params[:id].to_i]
    @category = @subcategory.category
    @items = @subcategory.items
  end
end
