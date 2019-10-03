require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    user_name = params[:name].reverse
    "#{user_name}"
  end

  get '/square/:number' do
    num = params[:number]
    num_squared = num.to_i ** 2
    "#{num_squared}"
  end

  get '/say/:number/:phrase' do
    print_phrases = params[:phrase] * params[:number].to_i
    "#{print_phrases}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  
end
