require 'sinatra'
require 'sinatra/json'
require 'sinatra/cross_origin'

set :port, '5000'
set :bind, '0.0.0.0'

# return a string
get '/health' do 
    response.headers['Access-Control-Allow-Origin'] = '*'
    response = {
      msg: 'healthy'
    }
    return json(response)
end 
  