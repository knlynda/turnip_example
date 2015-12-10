module Turnip::Steps
  # THEN #

  step 'monster :whether_to die' do |whether_to|
    expect(monster).send whether_to, be_die
  end

  step 'human :whether_to die' do |whether_to|
    expect(human).send whether_to, be_die
  end

  step 'monsters :whether_to die' do |whether_to|
    expect(monsters.map(&:live?).uniq).send whether_to, be_die
  end

  step 'humans :whether_to die' do |whether_to|
    expect(humans.map(&:live?).uniq).send whether_to, be_die
  end
end

