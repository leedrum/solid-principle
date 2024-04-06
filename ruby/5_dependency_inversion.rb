# Abtractions should not depend on details. Details should depend on abstractions.

class Document
  def print
    raise NotImplementedError
  end
end

class Printer
  def print
    puts 'Print'
  end
end

class Fax
  def print
    puts 'Fax'
  end
end

class Scanner
  def print
    puts 'Scan'
  end
end

class MultiFunctionPrinter
  def print
    puts 'Print'
  end
end

class OldFashionedPrinter
  def print
    puts 'Print'
  end
end

# This is an example of the Dependency Inversion Principle. The Document class
# is the abstraction and the Printer, Fax, Scanner, MultiFunctionPrinter, and
# OldFashionedPrinter classes are the details. The details depend on the
# abstraction. The abstraction does not depend on the details.
