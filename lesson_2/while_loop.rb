input = nil

thread_starter = Thread.new do
  while input != "STOP"
    puts "Enter input"
    input = gets.chomp
  end
end

thread_starter.join