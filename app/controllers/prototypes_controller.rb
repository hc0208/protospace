class PrototypesController < Prototype::RankingController
  before_action :set_prototype, only: [:destroy, :edit, :update, :show]

  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def show
    @comment = Comment.new
    @likes = Like.find_by(prototype_id: params[:id], user_id: current_user.id) if user_signed_in?
  end

  def newest
    @prototype = Prototype.order("created_at DESC")
    render action: :index
  end

  def create
    @prototype = Prototype.create(prototype_params)
    @prototype.label_list.add(params[:tag_list])
    @prototype.save
    redirect_to controller: 'prototype/ranking', action: 'index'
  end

  def destroy
    if @prototype.user_id == current_user.id
      @prototype.destroy
    end
    redirect_to :root
  end

  def edit
  end

  def update
    @prototype.update(update_params)
    @prototype.label_list = params[:tag_list]
    @prototype.save
    redirect_to :root
  end

  def set_prototype
    @prototype = Prototype.find(id_params[:id])
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :user_id, thumbnails_attributes: [:image, :role]).merge(user_id: current_user.id, tag_list: params[:tag_list])
  end

  def update_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :user_id, thumbnails_attributes: [:image, :role, :id]).merge(user_id: current_user.id, tag_list: params[:tag_list])
  end

  def id_params
    params.permit(:id, thumbnails_attributes: [:image, :role, :id])
  end
end
