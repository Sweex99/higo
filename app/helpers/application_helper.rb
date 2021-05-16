module ApplicationHelper
  def page_title
    content_for(:page_title) || Rails.application.class.to_s.split('::').first
  end

  def active_nav_item(controller, actions)
    'active' if active_actions?(controller, actions)
  end

  def icon(klass, text = nil)
    icon_tag = tag.i(class: klass)
    text_tag = tag.span text
    text ? tag.span(icon_tag + text_tag) : icon_tag
  end

  def localize(object, options = {})
    super(object, options) if object
  end
  alias :l :localize

  private
    def active_actions?(controller, actions)
      params[:controller].include?(controller) && actions.include?(params[:action])
    end
end
