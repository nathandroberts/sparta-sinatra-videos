require "sinatra"
require 'sinatra/reloader' if development?
require_relative './controllers/videos_controller.rb'

run VideosController
