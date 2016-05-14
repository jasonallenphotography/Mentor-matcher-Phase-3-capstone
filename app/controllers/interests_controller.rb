class InterestsController < ApplicationController
  def index
    @interests = Interest.all.order(name: ASC)
  end
end
