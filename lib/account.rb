require 'date'
class Account
  attr_reader :balance, :transaction_history
  def initialize
    @balance = 0
    @transaction_history = []

  end

  def credit(amount)
    @balance += amount.to_f
    log_transaction(amount.to_f, "")
  end

  def debit(amount)
    @balance -= amount.to_f
    log_transaction("", amount.to_f)

  end

  private 

  def log_transaction(date = Date.today, credit, debit)
    @transaction_history.push("#{date} || #{credit} || #{debit} || #{@balance}")
  end
  
end
