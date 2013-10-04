require 'faker'
require_relative '../config/application'

10.times do
  Task.create(:description => Faker::Company.catch_phrase)
end


make some changes