module Exalt
  class PrologNode
  end

  class Atom < PrologNode
    def initialize(value)
      @value = value
    end
  end

  class Name < Atom; end
  class Variable < Atom; end
  class Int < Atom; end

  class List < PrologNode
    def initialize(elements)
      @elements = elements
    end
  end

  class Relation < PrologNode
    def initialize(name, args)
      @name = name
      @args = args
    end
  end

  class Rule < PrologNode
    def initialize(head, goals)
      @head = head
      @goals = goals
    end
  end
end
