require 'spec_helper'
require_relative '../lib/race.rb'

RSpec.describe Race do
  subject(:race)  { Race.new }

  describe '::new' do
    it 'instantiates two cars' do
    expect(race.cars[0].class).to eq Car
     expect(race.cars[1].class).to eq Car
  end
    it 'accelerates the cars to random speeds' do
    expect(race.cars[0].speed).to_not eq race.cars[1].speed 
    expect(race.cars[0].speed).to_not be 0
    expect(race.cars[1].speed).to_not be 1
  end
end
  describe '#winner' do
    it 'returns the winner' do 
    winner = race.cars[0].speed > race.cars[1].speed ? race.cars[0] : race.cars[1]
      expect(race.winner).to eq winner
    end

    it 'is not the loser' do 
      loser = race.cars[0].speed < race.cars[1].speed ? race.cars[0] : race.cars[1]
     expect(race.winner).to_not eq loser
   end
  end

  describe '#loser' do
    it 'returns the loser' do
      loser = race.cars[0].speed < race.cars[1].speed ? race.cars[0] : race.cars[1]
     expect(race.loser).to eq loser
   end

    it 'is not the winner' do
      winner = race.cars[0].speed < race.cars[1].speed ? race.cars[1] : race.cars[0]
     expect(race.loser).to_not eq winner
    end
  end
end
