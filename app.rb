require "sinatra/base"
require 'pg'
require './lib/chitter.rb'
class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/feed' do
    session[:username] = params[:username]
    session[:peep] = params[:peep]
    connection = PG.connect(dbname: 'chitter')
    connection.exec("INSERT INTO feed (username, peeps) VALUES('#{params[:username]}', '#{params[:peep]}')")
    redirect '/feed'
  end

  get '/feed' do
    @feed = Chitter.view
    erb :feed
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    username = params['username']
    password = params['password']
    connection = PG.connect(dbname: 'chitter')
    connection.exec("INSERT INTO user_details (username, password) VALUES('#{username}', '#{password}')")

    redirect '/feed'
  end


  run! if app_file == $0
end
