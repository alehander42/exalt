module Exalt
  def self.run(prolog, env)
    Engine.new(prolog, env).run
  end

  # The engine that
  # executes prolog code
  class Engine

    def initialize(prolog, env)
      @prolog = prolog
      @env = env
    end

    def run
      @prolog.each &method(:run_one)
    end

    def run_one(expr)
      p expr
      puts expr.class
    end
  end
end

