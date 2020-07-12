require "option_parser"
# TODO: Write documentation for `Test`
module Test
  VERSION = "0.1.0"

  channel = Channel(String).new
  100000.times do
    spawn {
      channel.send "Hello?"
    }
    puts channel.receive
  end
end
