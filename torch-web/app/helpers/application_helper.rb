module ApplicationHelper
	def page_title
		title = "torch"
		title = @page_title + "-" + title if @page_title
		title
	end

  def menter_image_tag(menter, options = {})
    if menter.image.present?
      path = menter_path(menter, format: menter.image.extension)
      link_to(image_tag(path, { alt: menter.id }.merge(options)), path)
    else
      ""
    end
  end
end
