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

    xit 'raises an error if the customer deposits more than £100 into their account' do
      bank_account = BankAccount.new
      bank_account.deposit(100)
      error_message = "You have tried to deposit £101, but you can not deposit more than £100."
      expect { bank_account.current_balance }.to raise_error error_message
    end
  end

  describe '#withdraw' do
    it 'allows the customer to withdraw money from their account' do
      bank_account = BankAccount.new
      bank_account.deposit(10)
      bank_account.withdraw(10)
      expect(bank_account.current_balance).to eq(0)
    end

    it 'does not allow the customer to withdraw more than the maximum balance' do
      bank_account = BankAccount.new
      bank_account.deposit(10)
      bank_account.withdraw(10)
      expect(bank_account.current_balance).to be >=(0)
    end

    xit 'raises an error if the customer withdraws more than the maximum balance from their account' do
      bank_account = BankAccount.new
      withdraw_money = bank_account.withdraw(5)
      error_message = "You have tried to withdraw £10, but you only have £0 in your account."
      expect { withdraw_money }.to raise_error error_message
    end
  end

  describe '#show_balance' do
    it 'shows the customers current balance' do
      bank_account = BankAccount.new
      balance = bank_account.show_balance
      expect(bank_account.current_balance).to eq(0)
    end
  end
end
