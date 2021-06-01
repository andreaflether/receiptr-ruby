module ApplicationHelper
  def display_image(image, type)
    image.blank? ? asset_url("#{type}_placeholder.png") : image
  end
end
