class ApplicationController < ActionController::Base


 #  ENV['GEOCODE_ID']
 #  ENV['GOOGLE_MAP']
 #  ENV['UBER_TOKEN']
 #  ENV['UBER_ID']
 #  ENV['UBER_SECRET']
 #  ENV['LYFT_ID']
 #  ENV['LYFT_SECRET']

	# GOOGLE_MAP = "AIzaSyBzODxENljUqgCljINsi_-jQWfyHbYJH3Q"
    
 #    UBER_TOKEN = "3Y8tpNXfErvmttM5r5xGQmpGh6V-WSoKR-G85JYH"
 #    UBER_ID = "wpcm2PlbjXMjtQJfnldnvTGlzLjIzVJ_"

	# UBER_SECRET = "rRTVCeT0qxjHMioCA4Qx3EfSSXd2VaLFlybP6rTc"

	# LYFT_ID = "G_9u7J0dsCUX"
	# LYFT_SECRET = "gSfLysjKqQfJWlBfXvVhj2YXnT6B7wIj"

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
