

loop do
  puts "Please select an option from the menu:"
  puts 'Type "input" to store text for later use'
  puts 'Type "save" to save stored text to hello_from_ruby.txt'
  puts 'Type "load" to load saved data from hello_from_ruby.txt'
  puts 'Type "introspect" to view the stored code'
  puts 'Type "exit" to leave the program'
  select = gets.chomp
  case select
  when "input"
    puts "Please provide input text to be stored: "
    @text = gets.chomp
    puts "#{@text}"
  when "save"
    File.open("hello_from_ruby.txt", "w") {|f|f.puts "#{@text}"}
    puts "Text saved to file"
  when "load"
    file = File.open("hello_from_ruby.txt", "r")
    @text = file.read
    puts "Text loaded from file"
  when "introspect"
    file = File.open("hello_from_ruby.txt", "r")
    puts file.read
  when "exit"
    exit
  else
    puts "Input not recognised, please try again"
  end
end
