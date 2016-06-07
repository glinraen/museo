require 'rubygems'
require 'bundler'
require 'pry'
Bundler.require

# Models
require './models/museum'


# Controllers
require './app'
require './controllers/museums_controller'

use Rack::MethodOverride 

run Museo