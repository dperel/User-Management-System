class RelationshipsController < ApplicationController
  def create
    @relationship = current_user.relationships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to root_url
    else
      flash[:notice] = "Unable to add friend"
      redirect_to root_url
  end
end
