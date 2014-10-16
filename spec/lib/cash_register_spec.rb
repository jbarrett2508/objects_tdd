require 'rspec'
require_relative '../../lib/cash_register'

describe CashRegister do
  describe '#total' do
    it 'should equal 0.0 for new registers' do
    end

    describe '#purchase(amount)' do
      context 'when the amount > 0'
      it 'adds the amount to the total'
    end
    context 'when the amount = 0' do
      it 'should not change the total'
    end
    context 'when the amount < 0' do
      it 'raises an argument error'
    end
  end

  describe '#pay(amount)' do
    context 'when the amount is > 0'
    context 'and the amount is less than total' do
      it 'subtracts the amount from the total'
      it 'returns a string specifying the new total'
    end
  end
  context 'and the amount is equal to total' do
    it 'subtracts the amount from the total'
    it 'sets the total 0.0'
  end
  context 'and the amount is more than total' do
    it 'should make the total 0.0'
    it 'returns a string specifying the change'
  end
  context 'when the amount = 0' do
    it 'does not change the total'
  end
  context 'when the amount < 0' do
    it 'raises an argument error'
  end
end

