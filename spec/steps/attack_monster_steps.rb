module AttackMonsterSteps
  attr_accessor :human, :monster, :monsters

  # GIVEN #

  step 'I am a human' do
    self.human = Human.new
  end

  step 'there is a monster' do
    self.monster = Monster.new
  end

  step 'there is a monsters:' do |table|
    self.monsters = table.hashes.map do |hash|
      Monster.new(hash['hp'], hash['armor'], hash['damage'])
    end
  end

  # WHEN #

  step 'I attack monster' do
    human.attack monster
  end

  step 'I kill monster' do
    human.kill monster
  end

  step 'I attack monsters' do
    monsters.each do |monster|
      human.attack monster
    end
  end

  step 'I kill monsters' do
    monsters.each do |monster|
      human.kill monster
    end
  end

  # THEN #
end

RSpec.configure { |c| c.include AttackMonsterSteps, attack_monster_steps: true }