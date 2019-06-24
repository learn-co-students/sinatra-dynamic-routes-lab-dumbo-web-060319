require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do 
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    @op = params[:operation]

    if @op == "add"
      "#{@num_1 + @num_2}"
    elsif @op == "subtract"
      "#{@num_1 - @num_2}"
    elsif @op == "multiply"
      "#{@num_1 * @num_2}"
    else @op == "divide"
      "#{@num_1 / @num_2}"
    end

  end

end