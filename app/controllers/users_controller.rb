class UsersController < ApplicationController
  def logout
  end

  def show
  end

  def profile
    user = User.find(params[:id])
    if user != current_user
      redirect_to root_path
    end
  end

  def sell
    user = User.find(params[:id])
    if user != current_user
      redirect_to root_path
    end
  end
end
