require 'sinatra'
require 'pry'
require_relative 'lib/high_low'
require_relative 'lib/slots'
require_relative 'lib/player'

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

post '/games' do
	$player = Player.new(@name, @amount)
	erb :games
end

get '/slots' do
	slots = Slots.new($player)
	erb :slots

end

get '/slots/play' do
	erb :play_slots
end


get '/high_low' do
	@High_low = HighLow.new
	erb :high_low
end

get '/high' do
  $high_low_number
	@user_high_low = HighLow.new
	erb :high
end

get '/low' do
	$high_low_number
	@user_high_low = HighLow.new
	erb :low
end


get '/win' do
	@High_low = HighLow.new
	erb :win
end
