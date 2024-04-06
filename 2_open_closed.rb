# Software entities should be open for extension, but closed for modification.

# Example of a class that violates the open/closed principle
class Report
  def initialize
    @title = "Monthly Report"
    @text = ["Things are going", "really, really well"]
  end

  def output_report
    puts "<html>"
    puts "  <head>"
    puts "    <title>#{@title}</title>"
    puts "  </head>"
    puts "  <body>"
    @text.each do |line|
      puts "    <p>#{line}</p>"
    end
    puts "  </body>"
    puts "</html>"
  end
end

# Refactored version of the Report class
class Report
  def initialize
    @title = "Monthly Report"
    @text = ["Things are going", "really, really well"]
  end

  def output_report
    puts header
    puts body
    puts footer
  end

  def header
    "<html><head><title>#{@title}</title></head><body>"
  end

  def body
    @text.map { |line| "<p>#{line}</p>" }.join
  end

  def footer
    "</body></html>"
  end
end
