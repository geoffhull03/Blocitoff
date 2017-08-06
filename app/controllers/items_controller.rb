class ItemsController < ApplicationController

  def create
    @user = User.find(current_user.id)
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user

    if @item.save
      flash[:success] = "Item was saved."
      redirect_to user_path(@user.id)
    else
      flash[:alert] = "There was an error saving the item. Please try again."
      redirect_to user_path(@user.id)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @user = User.find(current_user.id)

    if @item.destroy
      flash[:notice] = "You've completed an item!"
      redirect_to user_path(@user.id)
    else
      flash.now[:alert] = "There was a problem checking off your task."
      redirect_to user_path(@user.id)
    end
  end
end
