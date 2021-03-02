# frozen_string_literal: true

class ModificationsController < ApplicationController
  def index; end

  def add
    # byebug
    current_user

    params[:section_id]
    params[:category_id]
    params[:subcategory_id]
    params[:item_id]
    params[:modification_id]
  end
end
