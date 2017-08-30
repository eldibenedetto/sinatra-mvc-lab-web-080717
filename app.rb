require "pry"
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text_from_user = params[:user_phrase]
    user_text = PigLatinizer.new
    @pig_latin_text = user_text.to_pig_latin(text_from_user)
    erb :piglatinize
  end

end
