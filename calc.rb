# Your code goes here

#define the initial input function
def input
	puts 'What sorta math do ya wanna do?'
	puts '1 for addition'
	puts '2 for subtraction'
	puts '3 for multiplication'
	puts '4 for division'
	puts '5 for exponent'
	puts '6 for squaring'
	puts '7 for cubing'
	puts '8 for square rooting'
	gets.chomp.to_i
end

#Define the final answer prompt
def answer_prompt(answer)
	puts "The answer to your problem is: #{answer}"
end

def addition (num1, num2)
	num1 + num2
end

def subtraction(num1, num2)
	num1 - num2
end

def multiplication(num1, num2)
	num1 * num2
end

def division(num1, num2)
	num1 / num2
end

def exponent(num1, num2)
	num1 ** num2
end

def square(num1)
	num1 * num1
end

def cube(num1)
	num1 ** 3
end

def square_root(num1)
	Math.sqrt(num1)
end

def assign_type(math_type)
	case math_type
	when 1
		puts 'Ok, addition. Give me two numbers to add. First number:'
		num1 = gets.chomp.to_i
		puts 'Second number:'
		num2 = gets.chomp.to_i
		addition(num1, num2)
	when 2
		puts 'Ok, subtraction. Give me two numbers to add. First number:'
		num1 = gets.chomp.to_i
		puts 'Second number:'
		num2 = gets.chomp.to_i
		subtraction(num1, num2)
	when 3
		puts 'Ok, multiplication. Give me two numbers to add. First number:'
		num1 = gets.chomp.to_i
		puts 'Second number:'
		num2 = gets.chomp.to_i
		multiplication(num1, num2)
	when 4
		puts 'Ok, division. Give me two numbers to add. First number:'
		num1 = gets.chomp.to_i
		puts 'Second number:'
		num2 = gets.chomp.to_i
		division(num1, num2)
	when 5
		puts 'Ok, exponents. Give me a base number:'
		num1 = gets.chomp.to_i
		puts 'And the exponent:'
		num2 = gets.chomp.to_i
		exponent(num1, num2)
	when 6
		puts 'Ok, squaring. Give me a number to square:'
		num1 = gets.chomp.to_i
		square(num1)
	when 7
		puts 'Ok, cubing. Give me a number to cube:'
		num1 = gets.chomp.to_i
		cube(num1)
	when 8
		puts 'Ok, square root. Give me a number to find the root of:'
		num1 = gets.chomp.to_i
		square_root(num1)
	else
		puts 'OK, funny guy. Let\'s try that again'
		input
	end
end




#run input function and assign value to variable "math_type"
math_type = input
#send number to assign_type, which will require user input and pass variables to other methods
#assign return value to answer variable
answer = assign_type(math_type)

answer_prompt(answer)
