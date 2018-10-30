require "sinatra/base"

class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end

<<<<<<< HEAD
  get '/feed' do
=======
  post '/feed' do
    session[:name] = params[:username]
    session[:peep] = params[:peep]
>>>>>>> c601425ad993f1af8ebe74bc3bc86e6fe131aa74
    erb :feed
  end

  run! if app_file == $0
end
