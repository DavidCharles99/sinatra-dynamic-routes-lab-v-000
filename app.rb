require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    user_name = params[:name].reverse
    "#{user_name}"
  end

  get '/square/:number' do
    i = params[:number]
    i_squared = i * i
    "#{i_squared}"
  end

end
