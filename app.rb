require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :sessions_secret, "1a2b3c"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    @session = session
    session[:item] = params[:item]
    
    erb :checkout
  end
end