class ApplicationController < ActionController::Base
    
    
    
    UBER_TOKEN = "3Y8tpNXfErvmttM5r5xGQmpGh6V-WSoKR-G85JYH"
    UBER_ID = "wpcm2PlbjXMjtQJfnldnvTGlzLjIzVJ_"
	UBER_SECRET = "rRTVCeT0qxjHMioCA4Qx3EfSSXd2VaLFlybP6rTc"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
