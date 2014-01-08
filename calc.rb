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

#define all of the math functions...
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

def get_it
	gets.chomp.to_i
end


#use the math type inputted by the user to determine which math function to use
#All math functions return values, which will be returned by assign_type
def assign_type(math_type)
	case math_type
	when 1
		puts 'Ok, addition. Give me two numbers to add. First number:'
		num1 = get_it
		puts 'Second number:'
		num2 = get_it
		addition(num1, num2)
	when 2
		puts 'Ok, subtraction. Give me two numbers to subtract. First number:'
		num1 = get_it
		puts 'Second number:'
		num2 = get_it
		subtraction(num1, num2)
	when 3
		puts 'Ok, multiplication. Give me two numbers to multiply. First number:'
		num1 = get_it
		puts 'Second number:'
		num2 = get_it
		multiplication(num1, num2)
	when 4
		puts 'Ok, division. Give me two numbers to divide. First number:'
		num1 = get_it
		puts 'Second number:'
		num2 = get_it
		division(num1, num2)
	when 5
		puts 'Ok, exponents. Give me a base number:'
		num1 = get_it
		puts 'And the exponent:'
		num2 = get_it
		exponent(num1, num2)
	when 6
		puts 'Ok, squaring. Give me a number to square:'
		num1 = get_it
		square(num1)
	when 7
		puts 'Ok, cubing. Give me a number to cube:'
		num1 = get_it
		cube(num1)
	when 8
		puts 'Ok, square root. Give me a number to find the root of:'
		num1 = get_it
		square_root(num1)
	else
		puts 'OK, funny guy. Let\'s try that again.'
		math_type = input
		answer = assign_type(math_type)
	end
end




#run input function and assign value to variable "math_type"
math_type = input
#send number to assign_type, which will require user input and pass variables to other methods
#assign return value (answer) to answer variable
answer = assign_type(math_type)
#invoke the answer prompt
answer_prompt(answer)
