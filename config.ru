require_relative 'lib/chitter'
require './lib/chitter.rb'
require 'app.rb'
run Sinatra::Application
run Chitter < Sinatra::Base
