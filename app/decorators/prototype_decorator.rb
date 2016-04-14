class PrototypeDecorator < Draper::Decorator
  delegate_all

  def fetch_tag(num)
    label_list[num].present? ? label_list[num] : ''
  end

  def mainrole
    thumbnails.main.present? ? thumbnails.main : ''
  end

  def subrole
    thumbnails.sub.present? ? thumbnails.sub : ''
  end
end
