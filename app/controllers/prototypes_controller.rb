class PrototypesController < Prototype::RankingController
  before_action :set_prototype, only: [:destroy, :edit, :update, :show]

  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    @prototype.label_list.add(tag_params)
    if @prototype.save
      redirect_to root_path, notice: 'The new prototype was successfully created'
    else
      @prototype.thumbnails.build
      render :new
    end
  end

  def show
    @comment = Comment.new
    @likes = Like.find_by(prototype_id: params[:id], user_id: current_user.id) if user_signed_in?
  end

  def newest
    @prototype = Prototype.order("created_at DESC").page(params[:page]).per(8)
    render action: :index
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
    @prototype.label_list = tag_params
    if @prototype.update(prototype_params)
      redirect_to root_path, notice: 'The new prototype was successfully updated'
    else
      render :edit
    end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def tag_params
    params[:prototype][:tag_list]
  end

  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catchcopy,
      :concept,
      :user_id,
      thumbnails_attributes: [:image, :role, :id]
    ).merge(tag_list: tag_params)
  end

  # def id_params
  #   params.permit(:id, thumbnails_attributes: [:image, :role, :id])
  # end
end
