require 'bank_account'
require 'pry'

describe BankAccount do
  describe '#deposit' do
    it 'allows the customer to deposit money into their account' do
      bank_account = BankAccount.new
      bank_account.deposit(10)
      expect(bank_account.current_balance).to eq(10)
    end

    it 'allows the customer the deposit no more than £100 into their account' do
      bank_account = BankAccount.new
      bank_account.deposit(99)
      expect(bank_account.current_balance).to be <=(100)
    end

    xit 'allows the customer the deposit no more than £100 into their account' do
      bank_account = BankAccount.new
      bank_account.deposit(101)
      error_message = "You have tried to deposit £101, but you can not deposit more than £100."
      expect { bank_account.current_balance }.to raise_error error_message
    end
  end
end
