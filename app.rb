require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    erb :reversename, :locals => {:name => params[:name]}
  end

  get '/square/:number' do 
    erb :square, :locals => {:number => params[:number]}
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say_number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    erb :say_words
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation] 
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    erb :operations
  end

end