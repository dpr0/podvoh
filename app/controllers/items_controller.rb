# frozen_string_literal: true

class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @subcategory = @item.subcategory
    @category = @subcategory.category
    query = {}
    Item::PROPS.each { |p| query[p] = params[p] if params[p] }
    @modifications = @item.modifications.where(query)
  end

  def filter
    search = {}
    search[:manufacturer_id] = params[:manufacturer_ids] if params[:manufacturer_ids].present?
    search[:category_id] = params[:category_id] if params[:category_id].present?
    @items = Item.where(search).all.to_a.group_by(&:category_id)
    render layout: false
  end
end
