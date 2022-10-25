class RootsController < ApplicationController
  #move_to_indexを後で記述

  def index
    @roots = Root.includes(:user).order("created_at DESC")
    @root = Root.new
  end

  def create
    @root = Root.new(root_params)
    if @root.save
      redirect_to root_path(@root)
    else
      @roots = Root.includes(:user)
      flash.now[:alert] = '投稿に誤りがあります。投稿ボタンをクリック'
      render :index
    end
  end

  def destroy
    root = Root.find(params[:id])
    root.destroy
    redirect_to root_path#アラート入れてもいいかも
  end

private
  def root_params
    params.require(:root).permit(:title, :content, :share, :image).merge(user_id: current_user.id)
  end

end
