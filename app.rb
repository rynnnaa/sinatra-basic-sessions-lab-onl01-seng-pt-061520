require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :sessions_secret, "1a2b3c"
  
  get '/' do
    @session = session
  end
end