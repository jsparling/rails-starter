module ApplicationHelper
  def page_title
    main = "change in app helper"
    return main if page_sub_title.nil?
    "#{main} - #{page_sub_title}"
  end

  def page_sub_title
    @page_sub_title
  end

  def set_page_subtitle(param)
    @page_sub_title = param
  end
end
