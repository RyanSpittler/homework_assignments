require 'rspec'
require_relative('../../lib/cash_register')

describe CashRegister do
  let(:cashregister) { CashRegister.new }
  it 'can be created' do
    expect(cashregister).to be_a(CashRegister)
  end

  it 'can give the total' do
    expect(cashregister.total).to eq('Your total is $0.00.')
  end

  it 'can add purchases' do
    cashregister.purchase(5.0)
    expect(cashregister.total).to eq('Your total is $5.00.')
  end

  context 'for payments' do
    context 'when the payment is less than the purchase' do
      it 'should return the remaining outstanding amount' do
        cashregister.purchase(10.0)
        expect(cashregister.payment(6.0)).to eq('Your new total is $4.00.')
        expect(cashregister.total).to eq('Your total is $4.00.')
      end
    end

    context 'when the payment is equal or more than the purchase' do
      it 'should return the change' do
        cashregister.purchase(5.0)
        expect(cashregister.payment(6.0)).to eq('Your change is $1.00.')
        expect(cashregister.total).to eq('Your total is $0.00.')
      end
    end
  end
end
