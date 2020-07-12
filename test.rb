module RubyTest


  10000.times.map do
    Thread.new do
      puts "Hello?"
    end
  end.each(&:join)
end
