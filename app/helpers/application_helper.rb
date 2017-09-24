module ApplicationHelper
  def render_title
  	@title = Setting.all[0].site_name
    return @title if defined?(@title)
    "SchoolSlider"
  end
end
