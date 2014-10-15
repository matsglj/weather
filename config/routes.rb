Rails.application.routes.draw do
 
  
  get "/enter_city" => "application#enter_city"
  
  get "/process_city" => "application#process_city"
  
end
