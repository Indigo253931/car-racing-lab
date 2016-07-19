require 'spec_helper'

RSpec.describe Race do
  describe '::new' do
    it 'instantiates two cars'
    it 'accelerates the cars to specified speeds'
  end
  describe '#winner' do
    it 'returns the winner'
    it 'is not the loser'
  end

  describe '#loser' do
    it 'returns the loser'
    it 'is not the winner'
  end
end
