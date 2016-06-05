require 'spec_helper'

describe NamesGenerator do
  it 'has a version number' do
    expect(NamesGenerator::VERSION).not_to be nil
  end

  describe '::getRandomName' do
    subject { NamesGenerator }

    it 'returns name' do
      expect(subject::getRandomName).to match(%r|\w+_\w+|)
    end
  end
end
