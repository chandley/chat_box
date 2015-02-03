require 'colorize'

def get_response(input)
  key = RESPONSES.keys.select {|k| /#{k}/ =~ input }.sample
  /#{key}/ =~ input
  response = RESPONSES[key]
  response.nil? ? 'sorry?' : response % { c1: $1, c2: $2, c3: $3} # what does % mean in this context?
end

def show_response (response, user = :computer)
	if user == :computer
		print 'C> '
		puts response.red # use colored gem
	else
		print 'U$ '
		puts response
	end
end

RESPONSES = { 'goodbye' => 'bye', 
              'sayonara' => 'sayonara', 
              'the weather is (.*)' => 'I hate it when it\'s %{c1}', 
              'I love (.*)' => 'I love %{c1} too', 
              'I groove to (.*) and (.*)' => 'I love %{c1} but I hate %{c2}',
              'I hate (.*)' => '%{c1} is horrible.',
              'Have you met (.*)\?' => '%{c1} is a good friend of mine.',
              'Have you been to (.*)\?' => '%{c1} is one of my favorite places.',
              'Can you play (.*) on a (.*)' => 'It\'s very difficult to play %{c1} with a %{c2}',
              'I wish (.*), (.*), and (.*)' => 'I grant your wish for %{c1} and %{c3} but not %{c2}'}
 #implementation of prompts is not good...
show_response( "Hello, what's your name?", :computer)	
print 'U$ ' 
name = gets.chomp
show_response( "Hello #{name}", :computer)
print 'U$ '
while(input = gets.chomp) do
	exit if input == 'quit'
  show_response( get_response(input), :computer)
  print 'U$ '
end
