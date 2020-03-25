class Statement
  def initialize(account)
    @account = account
  end

  def print_statement
    statement = 'date || credit || debit || balance'
    @account.transaction_history.each do |transaction|
      statement += "\n" + transaction
    end
    statement
  end
end
