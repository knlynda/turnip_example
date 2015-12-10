module AttackMonsterSteps
  attr_accessor :human, :monster

  # GIVEN #

  step 'I am a human' do
    self.human = Human.new
  end

  step 'there is a monster' do
    self.monster = Monster.new
  end

  # WHEN #

  step 'I attack monster' do
    human.attack monster
  end

  step 'I kill monster' do
    human.kill monster
  end

  # THEN #
end

RSpec.configure { |c| c.include AttackMonsterSteps, attack_monster_steps: true }