class Position
  attr_accessor :id, :title, :next_promotion
end

engineer2 = Position.new
engineer2.id = 2
engineer2.title = 'Инженер-проектировщик 2 категории'

engineer = Position.new
engineer.id = 1
engineer.title = 'Инженер-проектировщик 3 категории'
engineer.next_promotion = 2

engineers = [engineer, engineer2]

p engineers
p engineers.select {|engineer| engineer.id == 2 }
