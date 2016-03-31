class ApplicationController < ActionController::Base


ENV['GEOCODE_ID']
 ENV['GOOGLE_MAP']
 ENV['UBER_TOKEN']
 ENV['UBER_ID']
 ENV['UBER_SECRET']
 ENV['LYFT_ID']
 ENV['LYFT_SECRET']

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
