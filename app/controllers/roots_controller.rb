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
      flash.now[:alert] = '投稿に誤りがあります。投稿ボタンをクリック'
      render :index
    end
  end

private
  def root_params
    params.require(:root).permit(:title, :content, :share, :image).merge(user_id: current_user.id)
  end

end
