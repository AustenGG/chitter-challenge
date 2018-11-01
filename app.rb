require "sinatra/base"
require 'pg'
class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/feed' do
    session[:username] = params[:username]
    session[:peep] = params[:peep]
    connection = PG.connect(dbname: 'chitter')
    connection.exec("INSERT INTO tweets (username, tweets) VALUES('#{params[:username]}', '#{params[:peep]}')")
    redirect '/feed'
  end

  get '/feed' do
    erb :feed
  end

  get '/sign-up' do
    erb :sign_up
  end

  run! if app_file == $0
end
