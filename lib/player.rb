class Player
  attr_reader :hp, :armor, :damage, :live

  def initialize(hp=100, armor=3, damage=10)
    @hp = hp.to_i
    @armor = armor.to_i
    @damage = damage.to_i
    @live = true
  end

  def attack(someone)
    someone.get_damage(damage)
  end

  def kill(someone)
    raise "I can not kill the #{someone.class}" if someone.armor > damage

    loop do
      break if someone.die?
      someone.get_damage(damage)
    end
  end

  def get_damage(damage)
    if armor < damage
      @hp = hp + armor - damage
      @live = hp > 0
    end
  end

  def live?
    live
  end

  def die?
    !live
  end
end