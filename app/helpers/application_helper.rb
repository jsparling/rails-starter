module ApplicationHelper
  def page_title
    "change in app helper - #{page_sub_title}"
  end

  def page_sub_title
    @page_sub_title
  end

  def set_page_subtitle(param)
    @page_sub_title = param
  end
end
