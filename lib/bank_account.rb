class BankAccount
  attr_reader :current_balance
  def initialize
    @current_balance = 0
  end

  def deposit(money)
    error_message = "You have tried to deposit #{money}, but you can not deposit more than £100."
    if money <= 100
      @current_balance += money
    else
      fail error_message
    end
  end
end
