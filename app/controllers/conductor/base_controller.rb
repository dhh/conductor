class Conductor::BaseController < ActionController::Base
  before_filter :ensure_local_request
  before_filter :set_page_title
  
  layout "conductor/layouts/application"
  
  private
    def ensure_local_request
      unless local_request?
        render :text => "Only available from localhost", :status => :forbidden
      end
    end
    
    def set_page_title
      @page_title = self.class.controller_name.capitalize
    end
end
