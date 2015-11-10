module ApplicationHelper
  def mainrole
    @prototype.thumbnails.main
  end

  def subrole
    @prototype.thumbnails.sub
  end

  def like_count
    @prototype.likes.length - 1
  end
end
