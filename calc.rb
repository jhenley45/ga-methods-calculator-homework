# Your code goes here

#define the initial input function
def input
	puts 'What sorta math do ya wanna do?'
	puts '1 for addition'
	puts '2 for subtraction'
	puts '3 for multiplication'
	puts '4 for division'
	math = gets.chomp.to_i
end

def addition (num1, num2)
	answer = num1 + num2
	puts "The answer is #{answer}"
end

def subtraction(num1, num2)
	answer = num1 - num2
	puts "The answer is #{answer}"
end

def multiplication(num1, num2)
	answer = num1 * num2
	puts "The answer is #{answer}"
end

def division(num1, num2)
	answer = num1 / num2
	puts "The answer is #{answer}"
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
	else
		puts 'OK, funny guy.'
	end
end




#run input function and assign value to variable "math_type"
math_type = input
#send number to assign_type, which will require user input and pass variables to other methods
assign_type(math_type)

