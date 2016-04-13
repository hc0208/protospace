module ApplicationHelper
  def placeholder
    ['Web Design', 'UI', 'Application']
  end

  def like_count
    @prototype.likes.length
  end

  def sub1images
    @prototype.thumbnails.sub.first.image?
  end

  def sub2images
    @prototype.thumbnails.sub.second.image?
  end

  def comment_count
    @prototype.comments.length
  end

  def sub1image
    @prototype.thumbnails.sub.first.image
  end

  def sub2image
    @prototype.thumbnails.sub.second.image
  end
end
