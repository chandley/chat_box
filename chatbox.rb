require 'colored'

def get_response(input)
  key = RESPONSES.keys.select {|k| /#{k}/ =~ input }.sample
  /#{key}/ =~ input
  response = RESPONSES[key]
  response.nil? ? 'sorry?' : response % { c1: $1, c2: $2}
end

def colorize(text, color_code)
  "#{color_code}#{text}e[0m"
end

def red(text); colorize(text, "e[31m"); end
def green(text); colorize(text, "e[32m"); end

RESPONSES = { 'goodbye' => 'bye', 
              'sayonara' => 'sayonara', 
              'the weather is (.*)' => 'I hate it when it\'s %{c1}', 
              'I love (.*)' => 'I love %{c1} too', 
              'I groove to (.*) and (.*)' => 'I love %{c1} but I hate %{c2}',
              'I hate (.*)' => '%{c1} is horrible.',
              'Have you met (.*)\?' => '%{c1} is a good friend of mine.',
              'Have you been to (.*)\?' => '%{c1} is one of my favorite places.',
              'Can you play (.*) on a (.*)' => 'It\'s very difficult to play %{c1} with a %{c2}'}

 #implementation of prompts is not good...
print 'C> '
puts "Hello, what's your name?".red
print 'U$ '
name = gets.chomp
print 'C> '
puts "Hello #{name}".red
print 'U$ '
while(input = gets.chomp) do
	exit if input == 'quit'
	print 'C> '
  puts get_response(input).red
  print 'U$ '
end
