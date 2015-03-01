module ApplicationHelper
  def page_title
    "Rails Starter - #{page_sub_title}"
  end

  def page_sub_title
    @page_sub_title
  end

  def set_page_subtitle(param)
    @page_sub_title = param
  end
end
