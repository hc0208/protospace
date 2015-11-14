module ApplicationHelper
  def mainrole
    @prototype.thumbnails.main
  end

  def subrole
    @prototype.thumbnails.sub
  end

  def like_count
    @prototype.likes.length
  end

  def sub1image
    @prototype.thumbnails.sub.first.image?
  end

  def sub2image
    @prototype.thumbnails.sub.second.image?
  end

  def comment_count
    @prototype.comments.length
  end
end
