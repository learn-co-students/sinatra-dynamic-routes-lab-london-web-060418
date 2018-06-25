require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i  #to integer
    total = @number * @number
    "#{total}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    say = @phrase * @number
    "#{say}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      total = @number1 + @number2
      "#{total}"
    elsif @operation == "subtract"
      total = @number1 - @number2
      "#{total}"
    elsif @operation == "multiply"
      total = @number1 * @number2
      "#{total}"
    elsif @operation == "divide"
      total = @number1 / @number2
      "#{total}"
    else
      "Unable to perform this operation"
    end
  end

end
