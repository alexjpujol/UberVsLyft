class ApplicationController < ActionController::Base
    
	LYFT_ID = "G_9u7J0dsCUX"
	LYFT_SECRET = "gSfLysjKqQfJWlBfXvVhj2YXnT6B7wIj"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
