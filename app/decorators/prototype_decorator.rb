class PrototypeDecorator < Draper::Decorator
  delegate_all

  def fetch_tag(num)
    label_list[num].present? ? label_list[num] : ''
  end
end
