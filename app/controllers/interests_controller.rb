class InterestsController < ApplicationController
  def index
    @interests = Interest.all.order(name: ASC)
  #   if params[:search]
  #     @interests = Interest.search(params[:search])
  #   else
  #     @interests = Interest.all.order(name: ASC)
  # end
  end

  def show
    @interest = Interest.find(params[:id])
  end
end
