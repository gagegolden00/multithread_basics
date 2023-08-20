# frozen_string_literal: true

require_relative "multithread_basics/version"

module MultithreadBasics
  class Error < StandardError; end

  class Timer  ## TIMER CLASS =================================
    def initialize(time)
      @time = time
      check_input(@time)
      run_timer(@time)
    end

    private ## PRIVATE TIMER CLASS METHODS

    def check_input(input)
      begin
        unless input.is_a?(Float)
          raise ArgumentError.new("Input must be an integer value / whole number")
        end
      rescue ArgumentError => e
        puts e.message
      end
      puts "#{input} is a Float value"
    end

    def run_timer(input)
      @time = input.to_f

      unless !@time == 0

      @time.to_i.times do |i|
        @time -= 0.10  # Decrement the time by 0.10

        puts @time
        puts
      end
    end
    end

  end
end


MultithreadBasics::Timer.new(10.0)

