require 'open-uri'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def enter_city
    
  end
  
  def process_city
    
    url = "http://api.openweathermap.org/data/2.5/weather?q=#{  params["city"]      }"
    
    response = open(url).read

    parsed_response = JSON.parse(response)
    
    @weather = parsed_response["weather"][0]["main"]
    
    

    
    
    
    
    icon_code =    parsed_response["weather"][0]["icon"]
    @icon = "http://openweathermap.org/img/w/#{icon_code}.png"
  end
  
end
