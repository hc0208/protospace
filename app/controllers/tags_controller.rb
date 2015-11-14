class TagsController < ApplicationController

  def index
  end

  def show
    @prototype = Prototype.tagged_with(params[:id]).page(params[:page]).per(8)
  end
end
