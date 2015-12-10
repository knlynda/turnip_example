module Turnip::Steps
  # THEN #

  step 'monster :whether_to die' do |whether_to|
    expect(monster).send whether_to, be_live
  end

  step 'human :whether_to die' do |whether_to|
    expect(human).send whether_to, be_live
  end
end

