class Player
  attr_reader :hp, :armor, :damage, :live

  def initialize(hp=100, armor=3, damage=10)
    @hp = hp.to_i
    @armor = armor.to_i
    @damage = damage.to_i
  end

  def live?
    hp > 0
  end

  def die?
    hp <= 0
  end

  def attack(someone)
    someone.get_damage(damage)
  end

  def kill(someone)
    raise "I can not kill the #{someone.class}" if someone.armor > damage
    someone.get_damage(damage) until someone.die?
  end

  protected
  def get_damage(damage)
    @hp = (hp + armor - damage) if armor < damage
  end
end