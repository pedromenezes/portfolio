$:.unshift File.dirname(__FILE__)

require 'rubygems'
require 'sinatra'
require 'sass'
require 'yaml'

set :static_cache_control, [:public, :max_age => 600]

configure(:development) do |c|
  require "sinatra/reloader"
  c.also_reload "*.rb"
end

require './app'

run Sinatra::Application