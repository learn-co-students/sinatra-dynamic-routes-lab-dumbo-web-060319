require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do |name|
    @name = name
    @answer = @name.reverse! 
    "#{@answer}"
  end 

  get "/square/:number" do 
    @number = params[:number].to_i
    @answer = @number*@number
    "#{@answer}.to_s"
  end

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    count = 0 
    @finalStr=""
    while (count < @number)
      @finalStr = @finalStr + "#{@phrase}\n"
      count += 1 
    end 
    "#{@finalStr}"
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @totalStr=""
    params.each do |k,v|
      @totalStr = @totalStr + v + " "
    end 
    @totalStr = @totalStr.chomp(" ") + "."
    "#{@totalStr}"
  end 

  get "/:operation/:number1/:number2" do 
    op = params[:operation]
    if op == "add"
      @answer = params[:number1].to_i + params[:number2].to_i 
      "#{@answer}"
    elsif op == "subtract" 
      @answer = params[:number1].to_i - params[:number2].to_i 
      "#{@answer}"
    elsif op == "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
      "#{@answer}"
    elsif op == "divide"
      @answer = params[:number1].to_i / params[:number2].to_i 
      "#{@answer}"
    end 
  end 
end