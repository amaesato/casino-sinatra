require 'sinatra'
require 'pry'
require_relative 'lib/high_low'

get '/' do
	erb :index
end

get '/games' do
	erb :games
end

get '/high_low' do
	@high_low = HighLow.new
	erb :high_low
end

get '/player' do
	@name = params[:name]
	@amount = params[:amount]
	erb :player
end

post '/player' do
	@player = Player.new(@name, @amount)
end
