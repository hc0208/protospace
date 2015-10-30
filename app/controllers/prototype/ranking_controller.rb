class Prototype::RankingController < ApplicationController
  def index
    @prototype = Prototype.order("created_at DESC")
  end
end
