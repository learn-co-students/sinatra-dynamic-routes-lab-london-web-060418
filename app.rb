require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params.values.join(" ").concat(".")
    erb :say_sentence
  end

  get '/add/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    erb :add
  end

  get '/subtract/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    erb :subtract
  end

  get '/multiply/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    erb :multiply
  end

  get '/divide/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    erb :divide
  end




end
