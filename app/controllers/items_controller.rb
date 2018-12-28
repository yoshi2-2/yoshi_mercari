class ItemsController < ApplicationController
  def index
  end

  def sell
    # user = User.find(params[:id])
    @item = Item.new
    # if user != current_user
    #   redirect_to root_path
    # end

  end
end
