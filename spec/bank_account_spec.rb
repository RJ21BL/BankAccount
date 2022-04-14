require 'bank_account'
require 'pry'

describe BankAccount do
  describe '#deposit' do
    it 'allows the customer to deposit money into their account' do
      bank_account = BankAccount.new
      bank_account.deposit(10)
      expect(bank_account.current_balance).to eq(10)
    end
  end
end
