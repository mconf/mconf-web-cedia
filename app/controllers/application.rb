# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base  
  # Be sure to include AuthenticationSystem in Application Controller instead
  include SimpleCaptcha::ControllerHelpers 
 
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '29d7fe875960cb1f9357db1445e2b063'
  
  # This method calls one from the plugin, to get the Space from params or session
  def space
    container
  end

  # This method is the same as space, but raises error if no Space is found
  def space!
    container!
  end

  helper_method :space, :space!
end
