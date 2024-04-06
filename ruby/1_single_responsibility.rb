# Every module or class should have responsesibility over-a single part of the functionality provided by the software,
# and that responsibility should be entirely encapsulated by the class.

# Example of a class that violates the single responsibility principle
class Email
  def initialize(email)
    @email
  end

  def valid?
    email.include?("@")
  end

  def send_email
    puts "Sending email..."
  end
end

# Refactored version of the Email class
class Email
  def initialize(email)
    @email
  end

  def valid?
    email.include?("@")
  end
end

class MailerService
  def send_email(email)
    puts "Sending email..."
  end
end
