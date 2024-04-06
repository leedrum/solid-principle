# Objects in a program should be replaceable with instances of their subtypes without affecting the correctness of that program.

# Example of a class that violates the Liskov substitution principle
class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end

class Swallow
  def tweet
    puts "Tweet tweet"
  end
end

class Ostrich
  def tweet
    puts "..."
  end
end

# Refactored version of the Bird class
class Bird
  def tweet
    raise NotImplementedError, "You must implement the tweet method"
  end
end

class Swallow < Bird
  def tweet
    puts "Tweet tweet"
  end
end

class Ostrich < Bird
  def tweet
    puts "..."
  end
end
