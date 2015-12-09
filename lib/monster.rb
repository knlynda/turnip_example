class Monster
  attr_reader :hp, :armor, :damage, :live

  def initialize(hp=100, armor=3, damage=10)
    @hp = hp
    @armor = armor
    @damage = damage
    @live = true
  end

  def attack(someone)
    someone.get_damage(damage)
  end

  def get_damage(damage)
    if armor < damage
      @hp = hp + armor - damage
      @live = hp > 0
    end

    hp
  end

  def live?
    live
  end
end