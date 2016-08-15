require 'sinatra'
require 'pry'
require_relative 'lib/high_low'
require_relative 'lib/slots'

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

get '/slots' do
	erb :slots
end

get '/slots/play' do
	@wallet = 1010
	erb :play_slots
end

