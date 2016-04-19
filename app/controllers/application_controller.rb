class ApplicationController < ActionController::Base

  #Put this here to ensure names were correct 
  #YELP KEYS
  # ENV['CONSUMER_KEY']
  # ENV['CONSUMER_SECRET']
  # ENV['TOKEN']
  # ENV['TOKEN_SECRET']

  #GEOCODE AND GOOGLE KEYS
  # ENV['GEOCODE_ID']
  # ENV['GOOGLE_MAP']

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
