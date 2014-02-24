def interactive_menu
  puts "Please select an option from the menu:"
  puts 'Type "input" to store text for later use'
  puts 'Type "save" to save stored text to hello_from_ruby.txt'
  puts 'Type "load" to load saved data from hello_from_ruby.txt'
  puts 'Type "introspect" to view the stored code'
  puts 'Type "exit" to leave the program'
end

loop do
  interactive_menu
  select = gets.chomp
  case select
  when "input"
    puts "Please provide input text to be stored: "
    @text = gets.chomp
  when "save"
    File.open("hello_from_ruby.txt", "w") {|f| f.puts "#{@text}"}
    puts "Text saved to file"
  when "load"
    File.open("hello_from_ruby.txt", "r") {|f| @text = f.read}
    puts "Text loaded from file"
  when "introspect"
    File.open("hello_from_ruby.txt", "r") {|f| puts f.read}
  when "exit"
    exit
  else
    puts "Input not recognised, please try again"
  end
end
