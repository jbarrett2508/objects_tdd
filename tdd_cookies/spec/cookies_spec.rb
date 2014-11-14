require 'rspec'
require_relative '../lib/cookies'


describe Cookies do
  subject { Cookies.new(375, 10, 5) }
  it 'should be a batch of cookies' do
    expect(subject).to be_a(Cookies)
  end

  describe '#baking_time' do
    it 'should give the baking time for a recipe' do
      expect(subject.baking_time).to eq(10)
    end
  end

  describe '#temperature' do
    it 'should return an oven temperature' do
      expect(subject.temperature).to eq(375)
    end
  end

  describe '#temperature_to_celcius' do
    it 'should convert an oven temperature to Celcius' do
      expect(subject.temp_to_celcius).to eq(190.55555555555557)
    end
  end

  describe '#time_elapsed' do
    it 'should give the time elapsed' do
      expect(subject.time_elapsed).to eq(5)
    end
  end

  describe '#time_remaining' do
    it 'should give the time remaining' do
      expect(subject.time_remaining).to eq(5)
    end
  end

  describe '#not_done' do
    it 'should determine that cookies are not done' do
      expect(subject.not_done?).to be(true)
    end
  end

  describe '#overdone' do
    it 'should determine that cookies are overdone' do
      expect(subject.overdone?).to be(false)
    end
  end

  describe '#check_cookies' do
    it 'should check cookies for doneness' do
      expect(subject.check_cookies).to eq('Bake for 5 more minutes')
    end
  end
end
