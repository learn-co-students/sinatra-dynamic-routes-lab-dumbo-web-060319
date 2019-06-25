require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
  	@name = params[:name]
  	"#{@name.reverse}"
  end
  
  get '/square/:number' do
    number = params[:number].to_i
    @square = number * number
    "#{@square}" 
  end
  
  get '/say/:number/:phrase' do
    @repeat_num = params[:number].to_i
    @repeat_phrase = params[:phrase]
    "#{@repeat_phrase * @repeat_num}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	@word1 = params[:word1]
  	@word2 = params[:word2]
  	@word3 = params[:word3]
  	@word4 = params[:word4]
  	@word5 = params[:word5]
  	"#{@word1} #{ @word2} #{ @word3} #{ @word4} #{ @word5}."
  end
  get '/:operation/:number1/:number2' do 	
  	@opp_one = params[:number1].to_i
  	@opp_two = params[:number2].to_i
  	case params[:operation]
  	when "add" 
  	  "#{@opp_one + @opp_two}" 
  	when "subtract"
	  "#{@opp_one - @opp_two}"
	when "multiply"
	 "#{@opp_one * @opp_two}"
	when "divide"
	  "#{@opp_one / @opp_two}"
	end
  end
end