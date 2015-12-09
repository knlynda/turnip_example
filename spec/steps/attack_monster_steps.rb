module AttackMonsterSteps
  step 'I am a player' do
    @player = Player.new
  end

  step 'there is a monster' do
    @monster = Monster.new
  end


  step 'I attack monster' do
    @player.attack(@monster)
  end

  step 'I kill monster' do
    @player.kill(@monster)
  end


  step 'monster should die' do
    expect(@monster).to_not be_live
  end

  step 'monster should not die' do
    expect(@monster).to be_live
  end
end

RSpec.configure { |c| c.include AttackMonsterSteps, attack_monster_steps: true }