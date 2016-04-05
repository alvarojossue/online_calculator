require "sinatra"
require_relative "lib/calculator.rb"

get "/" do
	erb(:home)
end

post "/calculate_add" do
	number_1 = params[:first_number]
	number_2 = params[:second_number]
	my_addition = Calculator.new
	@result = my_addition.add(number_1, number_2)
	erb(:result_add)
end

post "/calculate_substract" do
	number_1 = params[:first_number]
	number_2 = params[:second_number]
	my_substraction = Calculator.new
	@result = my_substraction.substract(number_1, number_2)
	erb(:result_substract)
end

post "/calculate_multiply" do
	number_1 = params[:first_number]
	number_2 = params[:second_number]
	my_multiplication = Calculator.new
	@result = my_multiplication.multiply(number_1, number_2)
	erb(:result_multiply)
end

post "/calculate_divide" do
	number_1 = params[:first_number]
	number_2 = params[:second_number]
	my_division = Calculator.new
	@result = my_division.divide(number_1, number_2)
	erb(:result_divide)
end

