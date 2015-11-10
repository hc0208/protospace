class Prototype::RankingController < ApplicationController
  def index
    @prototype = Prototype.order(likes_count: :DESC)
  end
end
