def get_response(input)
  key = RESPONSES.keys.select {|k| /#{k}/ =~ input }.sample
  /#{key}/ =~ input
  response = RESPONSES[key]
  response.nil? ? 'sorry?' : response % { c1: $1, c2: $2}
end

RESPONSES = { 'goodbye' => 'bye', 
              'sayonara' => 'sayonara', 
              'the weather is (.*)' => 'I hate it when it\'s %{c1}', 
              'I love (.*)' => 'I love %{c1} too', 
              'I groove to (.*) and (.*)' => 'I love %{c1} but I hate %{c2}',
              'I hate (.*)' => '%{c1} is horrible.',
              'Have you met (.*)\?' => '%{c1} is a good friend of mine.',
              'Have you been to (.*)\?' => '%{c1} is one of my favorite places.',
              'Can you play (.*) on a (.*)' => 'It\'s very difficult to play %{c1} with a %{c2}'}

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello #{name}"
while(input = gets.chomp) do
  puts get_response(input)
end