module AttackMonsterSteps
  attr_accessor :monster, :human

  # GIVEN #

  step 'I am a monster' do
    self.monster = Monster.new
  end

  step 'there is a human' do
    self.human = Human.new
  end

  # WHEN #

  step 'I attack human' do
    monster.attack human
  end

  step 'I kill human' do
    monster.kill human
  end

  # THEN #
end

RSpec.configure { |c| c.include AttackMonsterSteps, attack_human_steps: true }