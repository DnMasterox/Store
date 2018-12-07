class Duck

  @@greeting = 'Hello'

  def initialize(greeting)
    @greeeting = greeting
  end

  def quack
    puts "#{@@greeeting} #{@greeeting}"
  end

  class << self
    attr_accessor :greeting

    def quack
      puts "#{@@greeeting} #{@greeeting}"
    end
  end
end

duck1 = Duck.new('quack quack')
duck1.quack

Duck.greeting = 'class quack'
Duck.quack