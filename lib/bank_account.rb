class BankAccount
  attr_reader :current_balance
  def initialize
    @current_balance = 0
  end

  def deposit(money)
    @current_balance += money
  end
end
