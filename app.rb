require "sinatra/base"

class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/submit' do
    'Hello world'
  end



  run! if app_file == $0
end
