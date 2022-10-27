class WaysController < ApplicationController
  #move_to_indexを後で記述

  def index
    @ways = Way.includes(:user).order("created_at DESC")
    @way = Way.new
  end

  def create
    @way = Way.new(way_params)
    if @way.save
      redirect_to root_path(@way)
    else
      @ways = Way.includes(:user).order("created_at DESC")
      flash.now[:alert] = '投稿に誤りがあります。投稿ボタンをクリック'
      render :index
    end
  end

  def destroy
    way = Way.find(params[:id])
    way.destroy
    redirect_to root_path#アラート入れてもいいかも
  end

  def edit
    #@ways = Way.includes(:user).order("created_at DESC")
    @way = Way.find(params[:id])
  end

  def update
    @way = Way.find(params[:id])
    if @way.update(way_params)
      redirect_to root_path
    else
      render :edit
    end
  end

private
  def way_params
    params.require(:way).permit(:title, :content, :share, :image).merge(user_id: current_user.id)
  end

end
