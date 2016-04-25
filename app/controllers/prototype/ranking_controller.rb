class Prototype::RankingController < ApplicationController
  def index
    @prototype = Prototype \
                   .includes(:user)
                   .order(likes_count: :DESC)
                   .page(params[:page])
                   .per(8)
  end
end
