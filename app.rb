require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :sessions_secret, "1a2b3c"
  end
  
  get '/' do
    @session = session
    erb :index
  end
  
  post '/checkout' do
    @session = session
    erb :checkout
  end
end