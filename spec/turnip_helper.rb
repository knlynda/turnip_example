require 'turnip'
Dir.glob('spec/steps/**/*steps.rb') { |f| load f, true }


placeholder :whether_to do
  match /should not/ do
    :to
  end

  match /should/ do
    :not_to
  end
end
