class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :instantiate_controller_and_action_names
	
	def instantiate_controller_and_action_names
	      @current_action = action_name
	      @current_controller = controller_name
	end 

	# for new, edit, create and update page titles
	def set_page_title(title)
		@page_title = @current_action.titleize + title
	end
	  
  def help
    Helper.instance
  end

  class Helper
    include Singleton
    include ActionView::Helpers::TextHelper
  end 

   protected  
    def store_location
      session[:return_to] = request.url
    end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
	
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
