require_relative 'lib/chitter'
require './lib/chitter.rb'
require './app'
run Sinatra::Application
run Chitter
