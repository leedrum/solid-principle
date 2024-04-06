# No client should be forced to depend on methods it does not use.

class Document
  def print
    raise NotImplementedError
  end

  def fax
    raise NotImplementedError
  end

  def scan
    raise NotImplementedError
  end
end

class Printer
  def print
    puts 'Print'
  end
end

class Fax
  def fax
    puts 'Fax'
  end
end

class Scanner
  def scan
    puts 'Scan'
  end
end

class MultiFunctionPrinter
  def print
    puts 'Print'
  end

  def fax
    puts 'Fax'
  end

  def scan
    puts 'Scan'
  end
end

class OldFashionedPrinter
  def print
    puts 'Print'
  end

  def fax
    raise 'Not supported'
  end

  def scan
    raise 'Not supported'
  end
end
