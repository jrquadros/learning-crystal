require "option_parser"

the_beatles = [
  "John Lennon",
  "Paul MacCartney",
  "George Harrison",
  "Ringo Starr",
]

say_hi_to = ""

option_parser = OptionParser.parse do |parser|
  parser.banner = "Welcome to the Beatles App!"

  parser.on "-v", "--version", "Show version" do
    puts "version 1.0"
    exit
  end

  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end

  parser.on "-g NAME", "--goodbye_hello=NAME", "Say hello to whoever you want" do |name|
    say_hi_to = name
  end
end

unless say_hi_to.empty?
  puts ""
  puts "You say goodbye, and #{the_beatles[Random.new.rand(4)]} says hello to #{say_hi_to}!"
end
