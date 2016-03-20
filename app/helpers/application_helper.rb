module ApplicationHelper
  attr_accessor :page_sub_title

  def page_title
    main = "change in app helper"
    return main if page_sub_title.nil?
    "#{main} - #{page_sub_title}"
  end

  def bootstrap_class_for(flash_type)
    type_translation = {
      :success => "alert-success",
      :error => "alert-danger",
      :alert => "alert-warning",
      :notice => "alert-info",
    }

    type_translation.fetch(flash_type.to_sym, flash_type.to_s)
  end
end
