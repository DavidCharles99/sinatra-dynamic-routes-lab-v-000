require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    user_name = params[:name].reverse
    "#{user_name}"
  end

  get '/square/:number' do
    num = params[:number]
    num_squared = num.to_i ** 2
    "#{num_squared.to_s}"
  end

end
