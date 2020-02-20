ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, :development)

require 'sinatra/base'
require 'sinatra/reloader'

require_all './app'
