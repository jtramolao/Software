class ApplicationController < ActionController::Base
 layout :layout

  private

  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? false : "application"
    # or turn layout off for every devise controller:
    
  end


  protect_from_forgery with: :exception
end
