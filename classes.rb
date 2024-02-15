class Position
  @@amount = 0
  attr_accessor :id, :title, :next_promotion
  
  def initialize()
    @@amount += 1
  end
  
  def self.amount
    @@amount
  end
end

class Employee
  @@amount = 0
  attr_accessor :id, :name, :position

  def initialize()
    @@amount += 0
  end
  
  def self.amount
    @@amount
  end
end

puts Position.amount
