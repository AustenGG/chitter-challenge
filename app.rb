require "sinatra/base"

class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/feed' do
    session[:username] = params[:username]
    session[:peep] = params[:peep]
    erb :feed
  end
  get '/sign-up' do
    erb :sign_up
  end

  run! if app_file == $0
end
