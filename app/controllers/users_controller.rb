# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def show
    @user_mods = current_user.modifications
    @grouped_items = Item.where(id: @user_mods.map(&:item_id)).eager_load(:subcategory).group_by(&:subcategory)
  end
end
