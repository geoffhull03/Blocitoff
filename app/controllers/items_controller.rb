class ItemsController < ApplicationController

  def create
    @item = current_user.items.build(name: params[:item][:name])

    if @item.save
      flash[:success] = "Item was saved."
      redirect_to user_path(current_user)
    else
      flash[:alert] = "There was an error saving the item. Please try again."
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @item = current_user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "You've completed an item!"
      redirect_to user_path(current_user)
    else

      flash.now[:alert] = "There was a problem checking off your task."
      redirect_to user_path(current_user)
    end
  end
end
