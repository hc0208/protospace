class Prototype::RankingController < ApplicationController
  def index
    prototype_id = Like.group(:prototype_id).order('count_prototype_id DESC').count(:prototype_id).keys
    @prototype = prototype_id.map{|id| Prototype.find(id)}
  end
end
