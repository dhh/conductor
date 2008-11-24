# Methods added to this helper will be available to all templates in the application.
module Conductor::BaseHelper
  CONDUCTOR_PLUGIN_CSS_PATH = File.join(File.dirname(__FILE__), '..', '..', 'public', 'conductor.css')
  
  def conductor_stylesheet_tag
    if File.exist?(CONDUCTOR_PLUGIN_CSS_PATH)
      content_tag(:style, File.read(CONDUCTOR_PLUGIN_CSS_PATH))
    else
      stylesheet_link_tag "conductor"
    end
  end
end
