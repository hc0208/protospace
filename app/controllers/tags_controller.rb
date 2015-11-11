class TagsController < ApplicationController

  def index
  end

  def show
    @prototype = Prototype.tagged_with(params[:id])
  end
end
