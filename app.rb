require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared.to_s}"
  end

  get '/say/:number/:phrase' do
    @phrase_n_times = params[:phrase] * params[:number].to_i
    "#{@phrase_n_times}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@string}"
  end 

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @answer = 0
    
    case @operation
      when "add"
        @answer += @num1 + @num2
      when "subtract"
        @answer += @num1 - @num2
      when "divide"
        @answer += @num1 / @num2
      when "multiply"
        @answer += @num1 * @num2
    end
    "#{@answer}"
    #  binding.pry
  end
end