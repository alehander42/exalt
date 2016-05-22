module Exalt
  class Env
    def initialize(initial)
      @values = initial
    end

    def [](label)
      @values[label]
    end

    def []=(label, value)
      @values[label] = value
    end
  end
end
