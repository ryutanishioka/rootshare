class GoodsController < ApplicationController
  before_action :authenticate_user!

  def create
    good = Good.new(good_params)
    good.save
    @way = Way.find(params[:way_id])
    #good = current_user.goods.new(way_id: @way.id)
    #good.save
  end

  def destroy
    if good = Good.find_by(good_params)
      @way = Way.find(params[:way_id])
    #good = current_user.goods.new(way_id: @way.id)
      good.destroy
    end
  end

private
  def good_params
    #params.require(:good).merge(user_id: current_user.id, way_id: params[:way_id])
    { way_id: params[:way_id], user_id: current_user.id }
  end


end
