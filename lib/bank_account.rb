# frozen_string_literal: true

class BankAccount
  attr_reader :current_balance

  def initialize
    @current_balance = 0
  end

  def deposit(money)
    error_message = "You have tried to deposit £#{money}, but you can not deposit more than £100."
    if money <= 100 && @current_balance < 100
      @current_balance += money
      "You have deposited £#{money} into your account."
    else
      raise error_message
    end
  end

  def withdraw(money)
    error_message = "You have tried to withdraw £#{money}, but you only have £#{@current_balance} in your account"
    if money <= @current_balance
      @current_balance -= money
      "You have withdrawn £#{money} from your account."
    else
      raise error_message
    end
  end

  def show_balance
    "You currently have £#{@current_balance} in your account."
  end
end
