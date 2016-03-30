class ApplicationController < ActionController::Base

	GEOCODE_ID = "a5785bf3c698677630f375eae20eccb4"

	GOOGLE_MAP = "AIzaSyBzODxENljUqgCljINsi_-jQWfyHbYJH3Q"
    
    UBER_TOKEN = "3Y8tpNXfErvmttM5r5xGQmpGh6V-WSoKR-G85JYH"
    UBER_ID = "wpcm2PlbjXMjtQJfnldnvTGlzLjIzVJ_"
	UBER_SECRET = "rRTVCeT0qxjHMioCA4Qx3EfSSXd2VaLFlybP6rTc"

	LYFT_ID = "G_9u7J0dsCUX"
	LYFT_SECRET = "gSfLysjKqQfJWlBfXvVhj2YXnT6B7wIj"

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
