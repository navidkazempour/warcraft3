# http://classic.battle.net/war3/human/units/footman.shtml
class Unit
  attr_reader :health_points, :attack_power
  attr_accessor :enemy

  def initialize(health_points,attack_power)
    @health_points = health_points
    @attack_power = attack_power
    @enemy = enemy
  end

  def attack!(enemy)
    enemy.damage(attack_power)
  end

  def damage(attack_power)
    @health_points -= attack_power 
  end
end

class Footman < Unit
  def initialize
    # Need to default the 2 instance variables here
    super(60,10)
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

end

class Peasant < Unit
  def initialize
    super(35,0)
  end
end
